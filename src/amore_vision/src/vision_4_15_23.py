#!/usr/bin/env python
import rospy
import roslib
import sys
import rospy
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Pose, Point, Quaternion, PointStamped
from amore.msg import grid_point
from amore.msg import NED_objects
from amore.msg import to_cam
import math
import numpy as np
bridge = CvBridge()
global x_init #this is for just an initialization state
global y_init #this is just for an initilization state
x_init = 2
y_init = 2
global resolution

resolution = 1080 #this is for 1080p ()
acceptance_rate = 20 #20% of search zone is in wanted HSV color space

#this takes in the output from the lidar x,y,seg,header with unkown objects
#we are going to extract locations and send them to the search region for seeing if e can give a definite answer for classifying an object... 

def publish_to_PP(x_ndx,y_ndx,object_found,count2):
	pub = rospy.Publisher('NED_objects2', NED_objects ,queue_size = 1)
	cam = NED_objects()
	buoy = PointStamped()
	cam.quantity = count2
	for i in range(count2):
		buoy.header.seq += 1
		if (object_found[i] == 0):	
			buoy.header.frame_id = "unkown"
		elif (object_found[i] == 1):	
			buoy.header.frame_id = "red_bouy"
		elif (object_found[i] == 2):	
			buoy.header.frame_id = "green_buoy"
		else:
			buoy.header.frame_id = "you set this wrong like add another thing :)"
		buoy.point.x = x_lidar[i]
		buoy.point.y = y_lidar[i]
		cam.objects.append(buoy)
		pub.publish(cam)
	return(1)


def From_Lidar(msg):
	global size_lidar
	global x_lidar
	global y_lidar
	if (int(msg.quantity) > 0):
		#print(msg.quantity)
		size_lidar = msg.quantity
		x_lidar = msg.x
		y_lidar = msg.y
	else:
		size_lidar = 0
	print(size_lidar)
	return(size_lidar,x_lidar,y_lidar)

#goes to x,y and adds .5 m in each way returns the pixel values
#this is setup for 1080p
#this will be updated  for the opencv processed images...they are .5 the resolution of the original
def Search_Region_Bouy(x,y,ang,mag):
	ang = -1 * (ang - 90)
	ang_min = math.atan2(x ,(y + 1)) * (180/3.14)
	ang_max = math.atan2(x ,(y - 1)) * (180/3.14)
	#print(ang_min,ang,ang_max)
	#NEED TO TANSLATE THIS FROM THE ZED LENS AS i AM USING AN OFFSET
	
	centerXpixel = ((960/88) * ang) + (960/2)
	topYpixel = 100
	bottomYpixel = 400
	search_region_fix = 50
	leftXpixel = ((960/88) * ang_min) + (960/2) - search_region_fix
	rightXpixel = ((960/88) * ang_max) + (960/2) + search_region_fix
	if (leftXpixel <= 0):
		leftXpixel = 0
	if (rightXpixel >= 959):
		rightXpixel = 959	
	#print(int(leftXpixel),int(rightXpixel))
	return(int(leftXpixel),int(rightXpixel),int(topYpixel),int(bottomYpixel))

#Calculates if the search region has the color you were looking for in it 
def Calc_Color(image,color,x_start,x_end,y_start,y_end):
	thresh_H = range(1,255)
	thresh_S = range(1,255)
	thresh_V = range(1,255)
	(cols,rows,channels) = image.shape
	scaler = 2
	image = cv2.resize(image,(int(rows/scaler),int(cols/scaler))) 
	x_start = int(x_start/scaler)
	y_start = int(y_start)
	x_end = int(x_end)
	y_end = int(y_end)
	#print(x_start,x_end,y_start,y_end)
	AOI = image[y_start:y_end,x_start:x_end]	
	(cols2,rows2,channels) = AOI.shape
	#print(rows,cols)
	area = rows2*cols2
	count = 0.0
	for i in range((cols2/2)-1):
		for j in range((rows2/2)-1):
			(H,S,V)= AOI[i,j]
			if H in thresh_H and S in thresh_S and V in thresh_V:
				count+=1
				#print(H,S,V,i,j)
	if area == 0:
		area =  1
	percent = int(((count/float(area)))*100.0)
	#image_pubG = rospy.Publisher("IMG_SEARCH",Image,queue_size = 1)
	#image_pubG.publish(bridge.cv2_to_imgmsg(AOI, "bgr8"))
	return(percent)

#subs to the Image and performs a set of HSV 
def IMG_SUB(data):
	try:
		image = bridge.imgmsg_to_cv2(data, "bgr8")
	except CvBridgeError as e:
		print(e)
	neon_color = (20,255,57)
	thickness = 2
	(rows,cols,channels) = image.shape
	rows = rows
	cols = cols
	image = cv2.resize(image,(cols,rows)) 
	image2 = cv2.resize(image,(cols,rows)) 
	image3 = cv2.resize(image,(cols,rows))
	image4 = cv2.resize(image,(cols,rows))
	hsvr = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
	hsvg = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
#WAS THINKING OF USING LAB color space
	lab_w = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
	lab_bl = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
#!!!!!!!!!!!          START OF RED SPACE !!!!!!!!!!!!!!!!!!!!!!!
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
	image_l_red = np.array([1, 1, 1])
	image_h_red = np.array([10,255,255]) 
	mask_r = cv2.inRange(hsvr, image_l_red, image_h_red)
	res_r = cv2.bitwise_and(image,image, mask= mask_r)
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
#!!!!!!!!!!!          START OF GREEN SPACE !!!!!!!!!!!!!!!!!!!!!!!
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
	min_green = np.array([60,50,50]) 
	max_green = np.array([85,255,255])
	mask_g = cv2.inRange(hsvg, min_green, max_green) 
	res_g = cv2.bitwise_and(image2,image2, mask= mask_g)
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
#!!!!!!!!!!!          START OF WHITE SPACE !!!!!!!!!!!!!!!!!!!!!!!
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\ 
	min_white = np.array([0,0,165]) 
	max_white = np.array([100,75,255])
	mask_w = cv2.inRange(lab_w, min_white, max_white) 
	res_w = cv2.bitwise_and(image3,image3, mask= mask_w)
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
#!!!!!!!!!!!          START OF BLACK SPACE !!!!!!!!!!!!!!!!!!!!!!!
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
#	min_black = np.array([0,0,0]) 
#	max_black = np.array([255,255,70])
#	mask_bl = cv2.inRange(lab_bl, min_black, max_black) 
#	#res_bl = cv2.bitwise_not(mask_bl)
#	res_bl = cv2.bitwise_and(image4,image4, mask= mask_bl)
	(rows,cols,channels) = image2.shape
	#print(cols,rows)
#	global size_lidar
#	size_lidar = 0
	rospy.Subscriber("/Camera_Check", to_cam, From_Lidar,queue_size = 1)
#	print(size_lidar)
#	k = 0
#	print(x_lidar[0:size_lidar],y_lidar[0:size_lidar])
	for k in range(size_lidar - 1):
		print("in da loop")
		object_found = np.zeros(size_lidar)
		ang = math.atan2(x_lidar[k],y_lidar[k]) * (180/3.14)
		mag = (x_lidar[k]**2 + y_lidar[k]**2)**.5
		#print(y_lidar[i],x_lidar[i])
		#print(ang,mag)
		if (ang > 46 and ang < (46+88) and mag > .5 and mag <= 20):
			x_start,x_end,y_start,y_end = Search_Region_Bouy(y_lidar[k],x_lidar[k],ang,mag)
			start = (x_start,y_end)
			end = (x_end,y_start)
			#!!!!!!!!!!!          START OF RED SPACE !!!!!!!!!!!!!!!!!!!!!!!
			#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
			res_r = cv2.rectangle(res_r, start, end, neon_color, thickness)
			percent_R = Calc_Color(res_r,'Red',x_start,x_end,y_start,y_end)
			print(str(percent_R) + '% red')
			#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
			#!!!!!!!!!!!          START OF GREEN SPACE !!!!!!!!!!!!!!!!!!!!!!!
			#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
			res_g = cv2.rectangle(res_g, start, end, neon_color, thickness)
			percent_G = Calc_Color(res_g,'Green',x_start,x_end,y_start,y_end)
			search = cv2.rectangle(image, start, end, neon_color, thickness)
			print(str(percent_G) + '% green')
			object_found[k] = 0
			if (percent_R >= acceptance_rate):
				object_found[k] = 1
				print('Found RED!: @('+ str(x_lidar[k])+','+str(y_lidar[k])+')')
			if (percent_G >= acceptance_rate):
				object_found[k] = 2
				print('Found Green!: @('+ str(x_lidar[k])+','+str(y_lidar[k])+')')
			#print("im in the loop of size_lidar")
			
		else:
			#print("no object found")
			object_found[k] = 0
		image_pub = rospy.Publisher("search_area",Image,queue_size = 1)
		image_pub.publish(bridge.cv2_to_imgmsg(search, "bgr8"))
		publish_to_PP(x_lidar,y_lidar,object_found,size_lidar)
	try: #PUBLISHER CITY MAN IDK IF THIS IS GOOD SYNTAX BUT
		help = 1
		image_pubR = rospy.Publisher("Filtered/IMG_RED",Image,queue_size = 1)
		image_pubR.publish(bridge.cv2_to_imgmsg(res_r, "bgr8"))
		image_pubG = rospy.Publisher("Filtered/IMG_GREEN",Image,queue_size = 1)
		image_pubG.publish(bridge.cv2_to_imgmsg(res_g, "bgr8"))
		image_pubW = rospy.Publisher("Filtered/IMG_WHITE",Image,queue_size = 1)
		image_pubW.publish(bridge.cv2_to_imgmsg(res_w, "bgr8"))
	except CvBridgeError as e:
		print(e)	

#Start of main this is enterring the IMG_SUB function 
def main():
	rospy.init_node('vision_processing', anonymous = True)
	rospy.Subscriber("/zed2i/zed_node/rgb_raw/image_raw_color", Image,IMG_SUB,queue_size = 1)
	rate = rospy.Rate(10)
	print("STARTING UP TEST.PY---- GO TO READ.ME FOR ANY HELP")
	print("enjoy this software      <-(-_-)->")
	while not rospy.is_shutdown():
		rate.sleep()

main()
