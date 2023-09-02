/*
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 07/06/23
# this is for doing a 3d tranform into the frame of USV 
*/
#include <ros/ros.h>
#include "ros/console.h"
#include "time.h"
#include <sstream>
#include <iostream>
#include "math.h"
#include "stdio.h"
#include "nav_msgs/Odometry.h"
#include <Eigen/Geometry>
// PCL specific includes
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/point_cloud_conversion.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/PointIndices.h>
#include <pcl/common/transforms.h>
#include <pcl_ros/transforms.h>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/conversions.h>
#include <pcl/PCLPointCloud2.h>

//definitions of math numbers
#define PI 3.14159265
//Declarations of matrix formulas 
Eigen::MatrixXd  HT_NED_LP(4, 4), HT_NED_USV(4,4), HT_USV_VELODYNE(4,4), HT_VELODYNE_LP(4,4);
//Declaration of rosparams being pulled in 

//Declaration of poses for the USV in NED

ros::Publisher trans_pub;

float x_usv_NED,y_usv_NED,z_usv_NED,phi_usv_NED,theta_usv_NED,psi_usv_NED;
float PASS_L,PASS_H,NORM_K_SEARCH,SEG_DIST_WEIGHT,SEG_MAX_ITERATIONS,SEG_DIST_THRESH;
float CYL_DIST_WEIGHT,CYL_MAX_ITERATIONS,CYL_DIST_THRESH,CYL_RADIUS_H,CYL_RADIUS_L;
float lidar_offset_x,lidar_offset_y,lidar_offset_z;

std::string IMU_topic, lidar_topic;

void get_params(){
	ros::param::get("/PASS_L",PASS_L);
	ros::param::get("/PASS_H",PASS_H);
	ros::param::get("/NORM_K_SEARCH",NORM_K_SEARCH);
	ros::param::get("/SEG_DIST_WEIGHT",SEG_DIST_WEIGHT);
	ros::param::get("/SEG_MAX_ITERATIONS",SEG_MAX_ITERATIONS);
	ros::param::get("/SEG_DIST_THRESH",SEG_DIST_THRESH);
	ros::param::get("/CYL_DIST_WEIGHT",CYL_DIST_WEIGHT);
	ros::param::get("/CYL_DIST_THRESH",CYL_DIST_THRESH);
	ros::param::get("/CYL_RADIUS_L",CYL_RADIUS_L);
	ros::param::get("/CYL_RADIUS_H",CYL_RADIUS_H);
	ros::param::get("/lidar_topic",lidar_topic);
	ros::param::get("/IMU_topic",IMU_topic);
	ros::param::get("/lidar_offset_x",lidar_offset_x);
	ros::param::get("/lidar_offset_y",lidar_offset_y);
	ros::param::get("/lidar_offset_z",lidar_offset_z);
}
void cloud_cb(const sensor_msgs::PointCloud2 input){
	pcl::PointCloud<pcl::PointXYZ> cloud;
	sensor_msgs::PointCloud pc1;
	pcl::PCLPointCloud2 ros_cloud;
	sensor_msgs::convertPointCloud2ToPointCloud(input, pc1);
	//transform from velodyne to USV IMU
	HT_USV_VELODYNE << 1,0,0,lidar_offset_x,0,1,0,lidar_offset_y,0,0,1,lidar_offset_z,0,0,0,1;
	//iterate through and tranfrom each point from the pcl 
	for(int i = 0 ; i < pc1.points.size(); ++i){
		//matrix containg the points from the lidar .... 
		HT_VELODYNE_LP << cos(psi_usv_NED),-sin(psi_usv_NED),0,pc1.points[i].x,sin(psi_usv_NED),cos(psi_usv_NED),0,-pc1.points[i].y,0,0,1,-pc1.points[i].z,0,0,0,1;
		//the matrix multiplication to convert the points to global 
		//HT_NED_LP = HT_NED_USV*HT_USV_VELODYNE*HT_VELODYNE_LP;
		HT_NED_LP = HT_NED_USV*HT_VELODYNE_LP;
		pcl::PointXYZ pt;
		pt.x = HT_NED_LP(12);
		pt.y = HT_NED_LP(13);
		pt.z = HT_NED_LP(14);
		cloud.points.push_back(pt);
	}
	pcl::toPCLPointCloud2(cloud,ros_cloud);
	ros_cloud.header.frame_id = "wamv/base_link";
	trans_pub.publish(ros_cloud);
}

void pose_cb(const nav_msgs::Odometry::ConstPtr &odom){
	x_usv_NED = odom->pose.pose.position.x;
	y_usv_NED = odom->pose.pose.position.y;
	z_usv_NED = odom->pose.pose.position.z;
	phi_usv_NED = odom->pose.pose.orientation.x;
	theta_usv_NED = odom->pose.pose.orientation.y;
	psi_usv_NED = odom->pose.pose.orientation.z;
	 //transform from NED Global to USV
	HT_NED_USV << cos(theta_usv_NED)*cos(psi_usv_NED), sin(phi_usv_NED)*sin(theta_usv_NED)*cos(psi_usv_NED)-cos(phi_usv_NED)*sin(psi_usv_NED),cos(phi_usv_NED)*sin(theta_usv_NED)*cos(psi_usv_NED)+sin(phi_usv_NED)*sin(psi_usv_NED),x_usv_NED,cos(theta_usv_NED)*sin(psi_usv_NED), sin(phi_usv_NED)*sin(theta_usv_NED)*sin(psi_usv_NED)+cos(phi_usv_NED)*cos(psi_usv_NED),cos(phi_usv_NED)*sin(theta_usv_NED)*sin(psi_usv_NED)-sin(phi_usv_NED)*cos(psi_usv_NED),y_usv_NED,-sin(theta_usv_NED),sin(phi_usv_NED)*cos(theta_usv_NED),cos(phi_usv_NED)*cos(theta_usv_NED),z_usv_NED,0,0,0,1;
	
	
	//HT_NED_USV << 1,0,0,x_usv_NED,0,1,0,y_usv_NED,0,0,1,z_usv_NED,0,0,0,1;
}

int main (int argc, char** argv)
{
	// Initialize ROS
	ros::init (argc, argv, "Vision/transform_3d.cpp");
	ros::NodeHandle vel_transform;

	get_params();
	// Create a ROS subscriber for the input point cloud
	
	//ros::Subscriber sub = vel_transform.subscribe ("/velodyne_points", 1, cloud_cb);
	ros::Subscriber sub = vel_transform.subscribe (lidar_topic, 1, cloud_cb);
	ros::Subscriber sub2 = vel_transform.subscribe (IMU_topic, 1, pose_cb);

	// Create a ROS publisher for the output point cloud
	trans_pub = vel_transform.advertise <sensor_msgs::PointCloud2> ("/vision/tranformed", 10);
	// Spin
	ros::spin ();
}
