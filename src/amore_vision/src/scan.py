#!/usr/bin/env python3.6
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 04/23/2023
# This script is made for accessing the /scan topic of the LiDAR and creating an occupancy grid
# This script also handles sending the points of interest to the vision.py script
#

import rospy									
import math
import time
from math import trunc
import numpy as np
import statistics
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import OccupancyGrid, MapMetaData
from geometry_msgs.msg import Pose, Point, Quaternion, PointStamped
from amore.msg import grid_point
from amore.msg import NED_objects
from amore.msg import to_cam

#             Front of lidar
#                  +X
#                   |
#                   |
#                   |
#                   |
#                   |
#  -y <-----------LiDAR-------------> + y
#                   |
#                   |
#                   |
#                   |
#                   |
#                 - X
#             Behind LiDAR
#and the Z is down this happened and i didnt want to fix it after i did a tf transform 


#START CHECK_AREA loads the rosparams and enters function check_point
def check_area(msg):
	x_min = rospy.get_param('x_min')
	x_max = rospy.get_param('x_max')
	y_min = rospy.get_param('y_min')
	y_max = rospy.get_param('y_max')
	grid_size = rospy.get_param('grid_size')
	sensitivity = rospy.get_param('sensitivity')
	spread = 0 # dynamically created :)
	laser = rospy.get_param('laser')
	vehicle_dim_x =rospy.get_param('vehicle_dim_x') 
	vehicle_dim_y = rospy.get_param('vehicle_dim_y') 
	temp  = max(abs(x_min),abs(y_min),abs(y_max),abs(x_max))
	max_distance = temp
	max_index_x = (2*(max_distance / grid_size)+1)
	#at this pont ic an do some path based on like translating scan points into a different 0,0 the center of the boat this will help with being like yeah put a 1,1 m area of ignore around us no matter whatif IMU is pretty centered.... should be eay enough to play with....
	list_point = check_point(msg,x_min,x_max,y_min,y_max,grid_size,spread,laser,vehicle_dim_x,vehicle_dim_y,sensitivity,max_index_x) 
	#print(list_point)
#END CHECK_AREA

#START CHECK_POINT ... Iterates through all points and 
def check_point(msg,min_x,max_x,min_y,max_y,grid_size,spread,laser,vehicle_dim_x,vehicle_dim_y,sensitivity,max_index_x):
	scaler = (1/grid_size)
	low_x = min_x * scaler
	low_y = min_y * scaler
	high_x = max_x * scaler
	high_y = max_y * scaler
	area = ((max_x-min_x)*(max_y-min_y))
	count = 0
	count2 = 0
	out = ''
	acceptance = rospy.get_param('acceptance')
	array_old = array
	for i in range(int(low_x),int(high_x)+1):
		x_ndx = i * grid_size
		for j in range(int(low_y),int(high_y)+1):
			count += 1	
			y_ndx = j * grid_size
			if abs(x_ndx)-grid_size < (vehicle_dim_x/2) and abs(y_ndx)-grid_size < (vehicle_dim_y/2): 
			#ignores within vehicle parameters
				status = 0
				percent = 0
			else:
				percent = good_bad(msg,x_ndx,y_ndx,spread,laser,grid_size,sensitivity)
				new_y = np.round(float(max_index_x-1)/2 + float(y_ndx/grid_size))
				new_x = np.round(float(max_index_x-1)/2 + float(x_ndx/grid_size))
				ndx = new_x + (new_y * max_index_x)
				ndx = int(ndx)
				percent = (int(array_old[ndx]) + percent)/2
				array[ndx] = int(percent)
			#Tthis is publishing points for the camera to check 
			if percent >= acceptance:
				x_array[count2] = x_ndx
				y_array[count2] = y_ndx
				count2+=1
				#print("LIDAR ---X: " + str(x_ndx) + "Y: " + str(y_ndx) + "confidence: " + str(percent))
	#counter +=1
	#if counter >= 1000:
	#	counter = 0
	#print(x_array)
	#print(count2)	
	#if (counter % 10 == 0):		
	out2 = publish_to_camera(x_array,y_array,count2)
	out = publish_grid(array,max_index_x,grid_size)
	
	return(out)
#END CHECK_POINT

#START GOOD_BAD essentially checks the given point and returns a percent value
#uses std_deviations and a sensitivity parameter to calculate this 
def good_bad(scan,x,y,spread,laser,grid_size,sensitivity): # x is straight y is not
	y = -y
	dist = (x**2 + y**2)**.5
	if (x == 0):
		tempx = 0.001
	else:
		tempx = x
	if (y == 0):
		tempy = 0.001
	else:
		tempy = y
	if (dist == 0):
		dist = 0.001
	ang = math.degrees(math.atan(tempy/tempx))
	#print(ang,x,y)
		
	if (ang+180) >= 360:
		ang = ang - 360
	convert = (laser/360) 
	laser_mid = trunc((ang * convert) + 448) #this is exact search angle 
	size_diagnol = (grid_size**2 + grid_size**2)**.5
	side_length = (dist**2 + (size_diagnol/2)**2)**.5
	spread_ang = np.arcsin((size_diagnol/2)/side_length)
	spread_ang = (360/(2*math.pi))*spread_ang
	spread = trunc(spread_ang/convert)*2
	laser_low = laser_mid-(spread/2)
	laser_high = laser_mid+(spread/2)
	ang = ang + 90
#honestly think i may need to add another range calculation if im rolling over like this... 
	if laser_low < 0:
		laser_low = 0
	if laser_high > 896:
		laser_high = 896
#this was me seeing if I am able to use just one, or more than one laser for a point	
	if abs(laser_low-laser_mid) >= 1 and abs(laser_high-laser_mid) >= 1:
		returned_dist = min(scan.ranges[int(laser_low):int(laser_high)])
		std_dev = statistics.stdev(scan.ranges[int(laser_low):int(laser_high)])
		mean = statistics.mean(scan.ranges[int(laser_low):int(laser_high)])
	else:
		returned_dist = scan.ranges[int(laser_mid)]
		std_dev = 0
		mean = returned_dist
	#print(mean,std_dev)
	percent_range_h = mean + std_dev
	percent_range_l = mean - std_dev
	if (sensitivity == 0):
		sensitivity = 1
	sensitivity_done = (sensitivity/100)*(grid_size * (2**.5))
	acceptance_range_l = dist - sensitivity_done
	acceptance_range_h = dist + sensitivity_done
	choice = 1
	percent = 0
	if acceptance_range_l <= percent_range_l and acceptance_range_h >= percent_range_h:
		percent =(1-abs(mean-dist)/dist)*100
	if str(percent) == 'inf' or str(percent) == 'NaN':
		choice = 0
		percent = 0
	if abs(percent) > 100:
		percent = 0
	percent = int(percent)
	return(percent)
#END GOOD_BAD

#this is the function to publish the occupancy grid for visualization on RVIZ
def publish_grid(array,max_index_x,grid_size):
	pub = rospy.Publisher('Raw_LiDAR_Grid', OccupancyGrid,queue_size = 1)
	msg = OccupancyGrid()
	msg.header.stamp = rospy.Time.now()
	msg.header.frame_id = "grid_frame"
	msg.data = array
	pub2 = rospy.Publisher('map_metadata', MapMetaData, queue_size = 1)	
	msg.info = MapMetaData()
	msg.info.resolution = grid_size
	msg.info.width = math.ceil(max_index_x)
	msg.info.height = math.ceil(max_index_x)
	index_x = (max_index_x/2)*grid_size
	#print(index_x)
	msg.info.origin = Pose(Point(-index_x,-index_x, 0),Quaternion(0, 0, 0, 1))
	pub.publish(msg)
	return(1)

#this is the function for publishing to the camera the key points in an array 
def publish_to_camera(x_ndx,y_ndx,count2):
	if (count2 > 0):
		#time.sleep(0) # Sleep for .5 seconds
		pub = rospy.Publisher('Camera_Check', to_cam ,queue_size = 1)
		cam = to_cam()
		cam.quantity = count2
		cam.x = x_ndx[0:count2]
		cam.y = y_ndx[0:count2]
		pub.publish(cam)
	return(1)

#START MAIN ... basically does some initializations and then like enters the function check_area 
def main():
	rospy.init_node('reading_laser')
	x_min = rospy.get_param('x_min')
	x_max = rospy.get_param('x_max')
	y_min = rospy.get_param('y_min')
	y_max = rospy.get_param('y_max')
	grid_size = rospy.get_param('grid_size')
	sensitivity = rospy.get_param('sensitivity')
	spread = 0 # dynamically created :)
	laser = rospy.get_param('laser')
	vehicle_dim_x =rospy.get_param('vehicle_dim_x') 
	vehicle_dim_y = rospy.get_param('vehicle_dim_y') 
	temp  = max(abs(x_min),abs(y_min),abs(y_max),abs(x_max))
	max_distance = temp
	max_index_x = (2*(max_distance / grid_size))
	global array
	global array_old
	global x_array
	global y_array
	global counter
	counter = 0
	x = int(max_index_x)
	max_index_x = float((2*(max_distance / grid_size))+1)
	array = [0]*((x+1)*(x+1))
	array_old = [0]*((x+1)*(x+1))
	x_array = [0]*((x+1)*(x+1))
	y_array = [0]*((x+1)*(x+1))	
	sub = rospy.Subscriber('/scan',LaserScan, check_area,queue_size = 1)
	rate = rospy.Rate(1)
	print("STARTING UP SCAN.PY---- GO TO READ.ME FOR ANY HELP")
	print("enjoy this software      <-(-_-)->")
	while not rospy.is_shutdown():
		rate.sleep()
	print("EXECUTE ORDER 66: im now ded") #this is from star wars when they killed all the like jedis or something i think 
		
#END MAIN

#START EXECUTABLE
main()
	
