#!/usr/bin/env python3.8
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 04/23/2023
# This script is made for accessing the /velodyne_points topic of the LiDAR and creating an occupancy grid
#
import rospy
from std_msgs.msg import String
from std_msgs.msg import Float32
from std_msgs.msg import Int32
from sensor_msgs.msg import PointCloud, PointCloud2, ChannelFloat32, Imu
from std_msgs.msg import Float32MultiArray
from std_msgs.msg import MultiArrayDimension
from std_msgs.msg import MultiArrayLayout
import sensor_msgs.point_cloud2 as pc2Functions
from geometry_msgs.msg import Point32
import math
import time
from math import trunc
import numpy as np
import statistics
from nav_msgs.msg import OccupancyGrid, MapMetaData, Odometry
from geometry_msgs.msg import Pose, Point, Quaternion, PointStamped, QuaternionStamped
from fau_vision.msg import grid_point
from fau_vision.msg import NED_objects
from fau_vision.msg import vision
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
def Quat_Sub(msg):
	global q0
	global q1
	global q2
	global q3
	q0 = msg.orientation.x
	q1 = msg.orientation.y
	q2 = msg.orientation.z
	q3 = msg.orientation.w

def Odometry_Sub(msg):
	global odom_x
	global odom_y
	global odom_z
	global odom_psi
	odom_x = msg.pose.pose.position.x
	odom_y = msg.pose.pose.position.y
	odom_z = msg.pose.pose.position.z
	odom_psi = msg.pose.pose.orientation.z
	
def Point_Sub(PC):
#bring in rosparam from launch file
	lidar_offset_x = rospy.get_param('lidar_offset_x')
	lidar_offset_y = rospy.get_param('lidar_offset_y')
	lidar_range = rospy.get_param('lidar_range')
	occ_grid_range = rospy.get_param('occ_grid_range')
	grid_size = rospy.get_param('grid_size')
	lidar_sensitivity = rospy.get_param('lidar_sensitivity')
	lidar_intensity_l = rospy.get_param('lidar_intensity_l')
	lidar_intensity_h = rospy.get_param('lidar_intensity_h')
	lidar_model = rospy.get_param('lidar_model')
	vehicle_dim_width =rospy.get_param('vehicle_dim_width') 
	vehicle_dim_length = rospy.get_param('vehicle_dim_length')
	vehicle_lidar_height = rospy.get_param('vehicle_lidar_height')
	#start off initializtaion
	filtered=PointCloud()
	filtered.header.frame_id="wamv/base_link"
	pub_filtered = rospy.Publisher('Filered_PC1', PointCloud,queue_size = 1)
	#read points from pointcloud2
	gen = pc2Functions.read_points(PC, skip_nans=True, field_names=("x", "y", "z", "intensity", "ring"))

	scaler = (1/grid_size)
	max_index_x = float((2*(occ_grid_range / grid_size))+1)
	low_x = -occ_grid_range * scaler
	low_y = -occ_grid_range * scaler
	high_x = occ_grid_range * scaler
	high_y = occ_grid_range * scaler
	max_index_x = (2*(occ_grid_range / grid_size))+1
	x = int(2*(occ_grid_range / grid_size))
	array = [0]*((x+1)*(x+1))
	array_old = [0]*((x+1)*(x+1))
	count_obj_f = 0
	count_obj_b = 0
	count_obj_l = 0
	count_obj_r = 0

	for p in gen:
		#print("here at for")
		if (abs(p[0]) <= occ_grid_range  and abs(p[1]) <= occ_grid_range):
			#print("here at iffff")
			ndx = 0 #0-max_index_x   	    
			countx = 0
			county = 0 
			count = 0
			x = round(p[0],2)
			y = round(p[1],2)
			x_temp = trunc(p[0])
			y_temp = trunc(p[1])
			x_rem = x - x_temp
			y_rem = y - y_temp
			foundx = False
			foundy = False
			while (grid_size*count < 1 and (foundx == False and foundy == False)):
				#print("here at while")
				x_rem_check = grid_size*count - x_rem
				y_rem_check = grid_size*count - y_rem
				if (abs(x_rem_check) <= grid_size/2):
					foundx = True
				else:
					countx +=1
				if (abs(y_rem_check) <= grid_size/2):
					foundy = True
				else:
					county +=1
				count+=1
					
			x = (x_temp+(countx*grid_size))
			y = (y_temp+(county*grid_size))
			new_y = np.round(float(max_index_x-1)/2 + float(y/grid_size))
			new_x = np.round(float(max_index_x-1)/2 + float(x/grid_size))
			ndx = new_x + (new_y * max_index_x)
			ndx = int(ndx)
			array_old[ndx] += (1 * lidar_sensitivity/10)
			if (array_old[ndx] > 100):
				array_old[ndx] = 100
			#this is for forward 
			if (p[0] >= 1 and abs(p[1]) <= 2):
				x_array_f[count_obj_f] = p[0]
				y_array_f[count_obj_f] = -p[1]
				count_obj_f+=1
			#this is for back 
			if (p[0] <= -2 and abs(p[1]) <= 2):
				x_array_b[count_obj_b] = p[0]
				y_array_b[count_obj_b] = -p[1]
				count_obj_b+=1
			#this is for left 
			if (abs(p[0]) <= 3.5 and p[1] >= 2):
				x_array_l[count_obj_l] = p[0]
				y_array_l[count_obj_l] = -p[1]
				count_obj_l+=1
			#this is for right
			if (abs(p[0]) <= 3.5 and p[1] <= -2):
				x_array_r[count_obj_r] = p[0]
				y_array_r[count_obj_r] = -p[1]
				count_obj_r+=1
			if (abs(p[0]) >= (vehicle_dim_length/2) and abs(p[1]) >= (vehicle_dim_width/2)):
				array[ndx] = int(array_old[ndx])
			else:
				array_old[ndx] = 0
				array[ndx] = int(array_old[ndx])
			
			


	#  pub_filtered.publish(filtered)
	out = publish_grid(array,max_index_x,grid_size,vehicle_lidar_height)
	out1 = publish_OA_l(x_array_l,y_array_l,count_obj_l)
	out2 = publish_OA_B(x_array_b,y_array_b,count_obj_b)
	out3 = publish_OA_F(x_array_f,y_array_f,count_obj_f)
	out4 = publish_OA_R(x_array_r,y_array_r,count_obj_r)

    #this is the function to publish the occupancy grid for visualization on RVIZ
def publish_grid(array,max_index_x,grid_size,vehicle_lidar_height):
	#print("here at publish")
	pub = rospy.Publisher('THREEDEE_Occupancy_Grid', OccupancyGrid,queue_size = 1)
	msg = OccupancyGrid()
	msg.header.stamp = rospy.Time.now()
	msg.header.frame_id = "wamv/base_link"
	msg.data = array
	pub2 = rospy.Publisher('map_metadata', MapMetaData, queue_size = 1)	
	msg.info = MapMetaData()
	msg.info.resolution = grid_size
	msg.info.width = math.ceil(max_index_x)
	msg.info.height = math.ceil(max_index_x)
	index_x = (max_index_x/2)*grid_size
	#print(index_x)
	#msg.info.origin = Pose(Point(index_x+odom_x,-index_x+odom_y, -vehicle_lidar_height),Quaternion(q0, q1, q2, q3))
	msg.info.origin = Pose(Point(-index_x,-index_x, -vehicle_lidar_height),Quaternion(0, 0, 0, 1))
	#msg.info.origin = Pose(Point(-index_x,-index_x, 0),Quaternion(0, 0, 0, 1))
	pub.publish(msg)
	return(1)
	
#this is the function for publishing to the camera the path planner, this is for obstacle avoidance 
def publish_OA_F(x_ndx,y_ndx,count_obj):
	pub_vis_f = rospy.Publisher('vision/obstacle_avoidance/front', vision ,queue_size = 1)
	if (count_obj > 0):
		topic_f = vision()
		topic_f.object_avoid = "Front"
		topic_f.quantity_avoid = count_obj
		topic_f.x_avoid = x_ndx[0:count_obj]
		topic_f.y_avoid = y_ndx[0:count_obj]
		pub_vis_f.publish(topic_f)
	return(1)

#this is the function for publishing to the camera the path planner, this is for obstacle avoidance 
def publish_OA_B(x_ndx,y_ndx,count_obj):
	pub_vis_b = rospy.Publisher('vision/obstacle_avoidance/back', vision ,queue_size = 1)
	if (count_obj > 0):
		topic_b = vision()
		topic_b.object_avoid = "Back"
		topic_b.quantity_avoid = count_obj
		topic_b.x_avoid = x_ndx[0:count_obj]
		topic_b.y_avoid = y_ndx[0:count_obj]
		pub_vis_b.publish(topic_b)
	return(1)

#this is the function for publishing to the camera the path planner, this is for obstacle avoidance 
def publish_OA_L(x_ndx,y_ndx,count_obj):
	pub_vis_l = rospy.Publisher('vision/obstacle_avoidance/left', vision ,queue_size = 1)
	if (count_obj > 0):
		topic_l = vision()
		topic_l.object_avoid = "Back"
		topic_l.quantity_avoid = count_obj
		topic_l.x_avoid = x_ndx[0:count_obj]
		topic_l.y_avoid = y_ndx[0:count_obj]
		pub_vis_l.publish(topic_l)
	return(1)

#this is the function for publishing to the camera the path planner, this is for obstacle avoidance 
def publish_OA_R(x_ndx,y_ndx,count_obj):
	pub_vis_r = rospy.Publisher('vision/obstacle_avoidance/right', vision ,queue_size = 1)
	if (count_obj > 0):
		topic_r = vision()
		topic_r.object_avoid = "Back"
		topic_r.quantity_avoid = count_obj
		topic_r.x_avoid = x_ndx[0:count_obj]
		topic_r.y_avoid = y_ndx[0:count_obj]
		pub_vis_r.publish(topic_r)
	return(1)
#START OF THE MAIN -- ALL IT DOES IS 
def main():
	#initialize all global variables for retaining data
	global array
	global array_old
	global x_array_f
	global y_array_f
	global x_array_b
	global y_array_b
	global x_array_r
	global y_array_r
	global x_array_l
	global y_array_l
	global max_index_x
	global seq
	global q0
	global q1
	global q2
	global q3
	global odom_x
	global odom_y
	global odom_z
	global odom_psi
	rospy.init_node('Pointcloud2 -> Ocuupancy Grid')
	#gather rosparams load up all the parameters needed from FAU_Vision.launch
	occ_grid_range = rospy.get_param('occ_grid_range')
	grid_size = rospy.get_param('grid_size')
	#build array for occupancy grid
	max_index_x = (2*(occ_grid_range / grid_size))
	x = int(2*(occ_grid_range / grid_size))
	array = [0]*((x+1)*(x+1))
	array_old = [0]*((x+1)*(x+1))
	x_array_f = [0]*((x+1)*(x+1))
	y_array_f = [0]*((x+1)*(x+1))
	x_array_b = [0]*((x+1)*(x+1))
	y_array_b = [0]*((x+1)*(x+1))
	x_array_l = [0]*((x+1)*(x+1))
	y_array_l = [0]*((x+1)*(x+1))
	x_array_r = [0]*((x+1)*(x+1))
	y_array_r = [0]*((x+1)*(x+1))


	sub2 = rospy.Subscriber('/NA_nav_ned',Odometry,Odometry_Sub,queue_size = 1)
	sub3 = rospy.Subscriber('/wamv/sensors/imu/imu/data',Imu,Quat_Sub,queue_size = 1)
	#this is the start of reading the points from the lidar.... goes to the function Point_Sub 
	sub = rospy.Subscriber('/pc2/filtered/voxel_grid',PointCloud2,Point_Sub,queue_size = 1)
	#add this maybe this is voxel + statistical outlier
	#sub = rospy.Subscriber('/vision/filtered/statistical_outlier',PointCloud2,Point_Sub,queue_size = 1)
	#Decides the Loop rate for the PUBS and SUBS
	rate = rospy.Rate(1)
	print("STARTING UP scan_3d.PY---- GO TO READ.ME FOR ANY HELP")
	#print("STARTING      <-(-_-)->")
	rospy.loginfo("BRAIN POWER TURNING ON: <-(-_-)->")
	while not rospy.is_shutdown():
		rate.sleep()
	print("TERMINATING PROCESS: scan_3d.py") #this is from star wars when they killed all the like jedis or something i think 
		
#END MAIN

#START EXECUTABLE
main()
	


