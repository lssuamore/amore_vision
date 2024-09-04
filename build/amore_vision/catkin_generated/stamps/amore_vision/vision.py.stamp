#!/usr/bin/env python3.8

#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 04/23/2023
# This script is made for accessing the image streams from the ZED and converting colour spaces for detecting bouys
# This script also handles sending the local point for navigation to the USV
#
import rospy
import roslib
import sys
import rospy
import cv2
from std_msgs.msg import String
from nav_msgs.msg import Path
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Pose, Point, Quaternion, PointStamped, PoseStamped
import math
import numpy as np
import time
bridge = CvBridge()
global x_init #this is for just an initialization state
global y_init #this is just for an initilization state
x_init = 2
y_init = 2
global resolution

resolution = 1080 #this is for 1080p ()
acceptance_rate = 20 #20% of search zone is in wanted HSV color space

#subs to the Image and performs a set of HSV 
def IMG_SUB_LEFT(data):
#getting ROS PARAMS
	RED_H_L_1 = rospy.get_param('RED_H_L_1')
	RED_S_L_1 = rospy.get_param('RED_S_L_1')
	RED_V_L_1 = rospy.get_param('RED_V_L_1')
	RED_H_H_1 = rospy.get_param('RED_H_H_1')
	RED_S_H_1 = rospy.get_param('RED_S_H_1')
	RED_V_H_1 = rospy.get_param('RED_V_H_1')
	RED_H_L_2 = rospy.get_param('RED_H_L_2')
	RED_S_L_2 = rospy.get_param('RED_S_L_2')
	RED_V_L_2 = rospy.get_param('RED_V_L_2')
	RED_H_H_2 = rospy.get_param('RED_H_H_2')
	RED_S_H_2 = rospy.get_param('RED_S_H_2')
	RED_V_H_2 = rospy.get_param('RED_V_H_2')
	GREEN_H_L = rospy.get_param('GREEN_H_L')
	GREEN_S_L = rospy.get_param('GREEN_S_L')
	GREEN_V_L = rospy.get_param('GREEN_V_L')
	GREEN_H_H = rospy.get_param('GREEN_H_H')
	GREEN_S_H = rospy.get_param('GREEN_S_H')
	GREEN_V_H = rospy.get_param('GREEN_V_H')
	WHITE_H_L = rospy.get_param('WHITE_H_L')
	WHITE_S_L = rospy.get_param('WHITE_S_L')
	WHITE_V_L = rospy.get_param('WHITE_V_L')
	WHITE_H_H = rospy.get_param('WHITE_H_H')
	WHITE_S_H = rospy.get_param('WHITE_S_H')
	WHITE_V_H = rospy.get_param('WHITE_V_H')
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
	image5 = cv2.resize(image,(cols,rows))
	hsvr = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
	hsvg = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
	search = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
#WAS THINKING OF USING LAB color space
	lab_w = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
	lab_bl = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
#!!!!!!!!!!!          START OF RED SPACE !!!!!!!!!!!!!!!!!!!!!!!
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
	scaler = 3
	image_l_red = np.array([RED_H_L_1, RED_S_L_1, RED_V_L_1])
	image_h_red = np.array([RED_H_H_1,RED_S_H_1,RED_V_H_1]) 
	image_l_red2 = np.array([RED_H_L_2, RED_S_L_2, RED_V_L_2])
	image_h_red2 = np.array([RED_H_H_2,RED_S_H_2,RED_V_H_2]) 
	mask_r = cv2.inRange(hsvr, image_l_red, image_h_red)
	res_r = cv2.bitwise_and(image,image, mask= mask_r)
	mask_r2 = cv2.inRange(hsvr, image_l_red2, image_h_red2)
	res_r2 = cv2.bitwise_and(image5,image5, mask= mask_r2)
	res_r_combo = cv2.bitwise_or(res_r,res_r2)
	(cols,rows,channels) = res_r_combo.shape
	start = (320,100)
	end = (0,160)
	res_r_combo = cv2.resize(res_r_combo,(int(rows/scaler),int(cols/scaler))) 
	res_r_combo = cv2.rectangle(res_r_combo, start, end, neon_color, thickness)
	image_pubR = rospy.Publisher("Filtered/IMG_RED",Image,queue_size = 1)
	image_pubR.publish(bridge.cv2_to_imgmsg(res_r_combo, "bgr8"))
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
#!!!!!!!!!!!          START OF GREEN SPACE !!!!!!!!!!!!!!!!!!!!!!!
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
	min_green = np.array([GREEN_H_L,GREEN_S_L,GREEN_V_L]) 
	max_green = np.array([GREEN_H_H,GREEN_S_H,GREEN_V_H])
	mask_g = cv2.inRange(hsvg, min_green, max_green) 
	res_g = cv2.bitwise_and(image2,image2, mask= mask_g)
	(cols,rows,channels) = res_g.shape
	res_g = cv2.resize(res_g,(int(rows/scaler),int(cols/scaler)))
	image_pubG = rospy.Publisher("Filtered/IMG_GREEN",Image,queue_size = 1)
	image_pubG.publish(bridge.cv2_to_imgmsg(res_g, "bgr8"))
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\
#!!!!!!!!!!!          START OF WHITE SPACE !!!!!!!!!!!!!!!!!!!!!!!
#           \\\\\\\\\\\/////////////////\\\\\\\\\\\ 
	min_white = np.array([WHITE_H_L,WHITE_S_L,WHITE_V_L]) 
	max_white = np.array([WHITE_H_H,WHITE_S_H,WHITE_V_H])
	mask_w = cv2.inRange(lab_w, min_white, max_white) 
	res_w = cv2.bitwise_and(image3,image3, mask= mask_w)
	(rows,cols,channels) = image2.shape
	(colsw,rowsw,channelsw) = res_w.shape
	res_w = cv2.resize(res_w,(int(rowsw/scaler),int(colsw/scaler)))
	image_pubW = rospy.Publisher("Filtered/IMG_WHITE",Image,queue_size = 1)
	image_pubW.publish(bridge.cv2_to_imgmsg(res_w, "bgr8"))	
#imports info from the lidar for the camera to check 
	rospy.Subscriber("/Camera_Check", to_cam, From_Lidar,queue_size = 1)
	x_lidar_min = 0
	y_lidar_min = 0
	x_prev_min = 0
	y_prev_min = 0
	mag_min = 100
	ang_old = 700
	color_red = Calc_Color(res_r_combo,'Red',0,cols,0,rows)
	color_green = Calc_Color(res_g,'Green',0,cols,0,rows)
	color_white = Calc_Color(res_w,'White',0,cols,0,rows)
	#this is where we decide 
	scaler_choose = 2
#color balancing to determine what gate it sees
	if ((color_green >= scaler_choose*3.2) or (color_red >= scaler_choose*10)):
		gate_found = "Speed Gate"
	else:
		gate_found = "Entrance_Exit"

#	print(gate_found)
#initialize the publishers for the path of the USV
	pub_path = rospy.Publisher('/path_vision', Path ,queue_size = 1)
	path_vision = Path()
	path_vision2 = PoseStamped()
	path_vision3 = PoseStamped()
	pub_pathx = rospy.Publisher('/path_visionx', Path ,queue_size = 1)
	path_visionx = Path()
	path_vision2x = PoseStamped()
	path_vision3x = PoseStamped()
	
	try:
		for j in range(size_lidar-1):
			#print("in da loop")
			k = j - 1
			#print(size_lidar)
			#print(k,j)
			object_found = np.zeros(size_lidar-1)
			ang = math.atan2(x_lidar[k],y_lidar[k]) * (180/3.14)
			mag = (x_lidar[k]**2 + y_lidar[k]**2)**.5
			#print(y_lidar[k],x_lidar[k])
			#print(ang,mag)
			#time.sleep(0) # Sleep for .5 seconds
			if (abs(ang_old - ang) > 3) and mag < 30 and abs(y_lidar[k]) < 16:
				#print("in da loop 2")
				y_lidar_min2 = y_lidar_min
				x_lidar_min2 = x_lidar_min
				x_lidar_min = x_lidar[k]
				y_lidar_min = y_lidar[k]
				ang_old = ang
				if (x_lidar_min2 != 0):
					#print("in da loop 3")
					if (abs(x_prev_min - x_lidar_min) <= 4.5) and(abs(y_prev_min - y_lidar_min) >= 2)and ((x_prev_min != x_lidar_min) or (y_prev_min != y_lidar_min)):
						old_mag = mag
					#	print("in da loop 4")
						ang1 = math.atan2(x_lidar_min,y_lidar_min) * (180/3.14)
						ang2 = math.atan2(x_lidar_min2,y_lidar_min2) * (180/3.14)
						if (ang1 + ang2 >= 0): #first Quadrant
							x = (x_lidar_min + x_lidar_min2)/2
							y = (y_lidar_min + y_lidar_min2)/2
						if (ang1 + ang2 <= 0): #second Quadrant
							x = (x_lidar_min + x_lidar_min2)/2
							y = -(abs(y_lidar_min + y_lidar_min2))/2
						ang = math.atan2(x,y)
						#print(x,y)
						path_visionx.header.frame_id = "grid_frame"
						path_vision3x.header.frame_id = gate_found
						path_vision2x.pose.position.x= 0
						path_vision2x.pose.position.y = 0
						path_vision3x.pose.position.x = x
						path_vision3x.pose.position.y = y
						path_visionx.poses.append(path_vision2x)
						path_visionx.poses.append(path_vision3x)
						#path_vision2.pose.append(path_vision3)
						path_vision.header.frame_id = "grid_frame"
						path_vision3.header.frame_id = gate_found
						path_vision2.pose.position.x= 0
						path_vision2.pose.position.y = 0
						path_vision3.pose.position.x = x
						path_vision3.pose.position.y = y
						path_vision.poses.append(path_vision2)
						path_vision.poses.append(path_vision3)
						#path_vision2.pose.append(path_vision3)
						pub_path.publish(path_vision)
						pub_pathx.publish(path_visionx)
				x_prev_min = x_lidar_min
				y_prev_min = y_lidar_min
			else:
				path_vision.header.frame_id = "grid_frame"
				path_vision3.header.frame_id = gate_found
				path_vision2.pose.position.x= -69
				path_vision2.pose.position.y = -69
				path_vision3.pose.position.x = -69
				path_vision3.pose.position.y = -69
				path_vision.poses.append(path_vision2)
				path_vision.poses.append(path_vision3)
				#path_vision2.pose.append(path_vision3)
				pub_path.publish(path_vision)
	except:
		print("Empty Map -- lidar is not detecting any objects")



#Start of main this is enterring the IMG_SUB function 
def main():
	rospy.init_node('vision_processing', anonymous = True)
	rospy.Subscriber("/wamv/sensors/cameras/front_right_camera/image_raw", Image,IMG_SUB_RIGHT,queue_size = 10)
		rospy.Subscriber("/wamv/sensors/cameras/front_left_camera/image_raw", Image,IMG_SUB_LEFT,queue_size = 10)
	rate = rospy.Rate(10)
	print("STARTING UP Vision.PY---- GO TO READ.ME FOR ANY HELP")
	print("enjoy this software      <-(-_-)->")
	while not rospy.is_shutdown():
		rate.sleep()

main()



"""
#Not being used currently but can be used to publish 
def publish_to_PP(x_ndx,y_ndx,object_found,count2):
	try:
		pub = rospy.Publisher('NED_objects', NED_objects ,queue_size = 1)
		cam = NED_objects()
		buoy = PointStamped()
		cam.quantity = count2
		#print(count2)
		if count2 >= 1:
			for r in range(count2-1):
				i = r - 1
		#		print("R="+str(r))
				buoy.header.seq += 1
				if i > 0:
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
	except:
		print("error publishing")
	return(1)
	
	
#imports the data from the lidar that is sent for the coordinates for the camera to check
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
		size_lidar = 1 #-----------------------------------------------------changed
	#print(size_lidar)
	return(size_lidar,x_lidar,y_lidar)
	
	

#this takes in the output from the lidar x,y,seg,header with unkown objects
#we are going to extract locations and send them to the search region for seeing if e can give a definite answer for classifying an object... 



#goes to x,y and adds .5 m in each way returns the pixel values
#this is setup for 1080p
#this will be updated  for the opencv processed images...they are .5 the resolution of the original
def Search_Region_Bouy(x,y,ang,mag):
	ang = -1 * (ang - 90)
	ang_min = math.atan2(x ,(y + 1)) * (180/3.14)
	ang_max = math.atan2(x ,(y - 1)) * (180/3.14)
	distance = (x**2 + y**2)**.5
	#print(ang_min,ang,ang_max)
	#NEED TO TANSLATE THIS FROM THE ZED LENS AS i AM USING AN OFFSET
	adjust_offset = 25
	centerXpixel = ((960/88) * ang) + (960/2) + adjust_offset
	topYpixel = -((20/6)*y)+315 #need to adjust for like 20m 
	bottomYpixel = -((65/6)*y)+475 #need to adjust this for 20 m 
	area_extend = round(-((17/7)*distance) + 45)
	leftXpixel = centerXpixel - area_extend #need to exten for FOV
	rightXpixel = centerXpixel + area_extend #need to exam for FOV
	if (leftXpixel <= 0):
		leftXpixel = 0
	if (rightXpixel >= 959):
		rightXpixel = 959	
	#print(int(leftXpixel),int(rightXpixel))
	return(int(leftXpixel),int(rightXpixel),int(topYpixel),int(bottomYpixel))

#Calculates if the search region has the color you were looking for in it 
def Calc_Color(image,color,x_start,x_end,y_start,y_end):
	(rows,cols,channels) = image.shape
	#print(rows,cols)
	cropped_image = image[100:160,0:320]
	(rows,cols,channels) = cropped_image.shape
	area = int(cols)*int(rows)
	nzCount = np.sum(cropped_image != 0)
	percent = (float(nzCount)/float(area))*100
	#print(str(color) + ": " + str(percent) + "     " + str(rows) + "    " +str(cols) +str(nzCount))
	if (str(color) == 'Red'):
		image_pub_search = rospy.Publisher("Filtered/Search_sliver_red",Image,queue_size = 1)
		image_pub_search.publish(bridge.cv2_to_imgmsg(cropped_image, "bgr8"))
	if (str(color) == 'White'):
		image_pub_search = rospy.Publisher("Filtered/Search_sliver_white",Image,queue_size = 1)
		image_pub_search.publish(bridge.cv2_to_imgmsg(cropped_image, "bgr8"))
	if (str(color) == 'Green'):
		image_pub_search = rospy.Publisher("Filtered/Search_sliver_green",Image,queue_size = 1)
		image_pub_search.publish(bridge.cv2_to_imgmsg(cropped_image, "bgr8"))
	return(percent)
	
"""
