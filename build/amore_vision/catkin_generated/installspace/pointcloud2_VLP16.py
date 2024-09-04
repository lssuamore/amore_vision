#!/usr/bin/env python3
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 04/23/2023

import rospy
from std_msgs.msg import String
from std_msgs.msg import Float32
from std_msgs.msg import Int32
from sensor_msgs.msg import PointCloud
from sensor_msgs.msg import PointCloud2
from sensor_msgs.msg import ChannelFloat32
import sensor_msgs.point_cloud2 as pc2Functions
from geometry_msgs.msg import Point32
import math
import time
from math import trunc
import numpy as np
import statistics


def Point_Sub(PC):
#bring in rosparam from launch file
    lidar_offset_x = rospy.get_param('lidar_offset_x')
    lidar_offset_y = rospy.get_param('lidar_offset_y')
    lidar_range = rospy.get_param('lidar_range')
    lidar_sensitivity = rospy.get_param('lidar_sensitivity')
    lidar_model = rospy.get_param('lidar_model')
    vehicle_dim_width =rospy.get_param('vehicle_dim_width') 
    vehicle_dim_length = rospy.get_param('vehicle_dim_length')
    vehicle_lidar_height = rospy.get_param('vehicle_lidar_height')
#start off initializtaion
    pc1=PointCloud()
    pc1.header.frame_id="grid_frame"
    pub = rospy.Publisher('MY_PC', PointCloud,queue_size = 10)
#read points from pointcloud2
    gen = pc2Functions.read_points(PC, skip_nans=True, field_names=("x", "y", "z", "intensity", "ring"))
    

#start basic filtering 
    for p in gen:
        if(abs(p[0])> vehicle_dim_length and abs(p[1])> vehicle_dim_width and math.sqrt(p[0]*p[0]+p[1]*p[1])<= lidar_range and p[2]> -vehicle_lidar_height and p[2] < vehicle_lidar_height):
#filter out points in water and too high; also filter out points on boat; and filter to amx range
            tempPoint=Point32()
            tempPoint.x=p[0]
            tempPoint.y=p[1]
            tempPoint.z=p[2]
            pc1.points.append(tempPoint)

#publish the PC after filering
    pub.publish(pc1)

#START OF THE MAIN -- ALL IT DOES IS 
def main():
	rospy.init_node('Pointcloud_amazing_wow_VLP16')
#load up all the parameters needed from FAU_Vision.launch
#this is the start of reading the points from the lidar.... goes to the function Point_Sub 
	sub = rospy.Subscriber('/velodyne_points',PointCloud2,Point_Sub,queue_size = 1)
#Decides the Loop rate for the PUBS and SUBS
	rate = rospy.Rate(1)
	print("STARTING UP pointcloud.PY---- GO TO READ.ME FOR ANY HELP")
	print("enjoy this software      <-(-_-)->")
	while not rospy.is_shutdown():
		rate.sleep()
	print("EXECUTE ORDER 66: im now ded") #this is from star wars when they killed all the like jedis or something i think 
		
#END MAIN

#START EXECUTABLE
main()
	
