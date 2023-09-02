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
fx = 942.8        # lense focal length
baseline = 54.8   # distance in mm between the two cameras
disparities = 16 # num of disparities to consider
block = 9        # block size to match
units = 0.512     # depth units, adjusted for the output to fit in one byte


class vision_cb:


	def IMG_SUB_RIGHT(self, data):
		global imageL
		imageL = bridge.imgmsg_to_cv2(data, "bgr8")
		imageL = cv2.cvtColor(imageL, cv2.COLOR_BGR2GRAY)
		stereo()
		#image_L = rospy.Publisher("left",Image,queue_size = 1)
		#image_L.publish(bridge.cv2_to_imgmsg(imageL, "bgr8"))	

		
	def IMG_SUB_LEFT(self, data):
		global imageR
		imageR = bridge.imgmsg_to_cv2(data, "bgr8")
		imageR = cv2.cvtColor(imageR, cv2.COLOR_BGR2GRAY)
		#image_R = rospy.Publisher("right",Image,queue_size = 1)
		#image_R.publish(bridge.cv2_to_imgmsg(imageR, "bgr8"))	

				
	def __init__(self):
		#intilialize all subscribers
		rospy.Subscriber("/wamv/sensors/cameras/front_right_camera/image_raw", Image,self.IMG_SUB_RIGHT,queue_size = 10)
		rospy.Subscriber("/wamv/sensors/cameras/front_left_camera/image_raw", Image,self.IMG_SUB_LEFT,queue_size = 10)
		#call function for creating stero disparity map 
		print("STARTING UP Vision.PY---- GO TO READ.ME FOR ANY HELP")
		print("enjoy this software      <-(-_-)->")
		
		
def stereo():
	#initilaize all publishers
	image_pubdisparity = rospy.Publisher("vision/camera/disparity",Image,queue_size = 10)
	stereo = cv2.StereoBM_create(numDisparities=disparities, blockSize=block)
	disparity = stereo.compute(imageL,imageR)
	disparity = cv2.normalize(disparity, disparity, alpha=200, beta=100, norm_type=cv2.NORM_MINMAX, dtype=cv2.CV_8U)
	image_pubdisparity.publish(bridge.cv2_to_imgmsg(disparity, "8UC1"))
	


if __name__ == '__main__':
	rospy.init_node('vision_processing', anonymous = True)
	vision_cb()
	rospy.spin()

		
