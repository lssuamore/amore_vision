/*
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 07/06/23
# this is for doing classification based upon input from a velodyne lidar for the maritime domain
*/
#include "ros/ros.h"
#include "sensor_msgs/PointCloud2.h"
#include "std_msgs/String.h"
#include <sstream>
#include <pcl/pcl_config.h>
#include <pcl/common/common.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>

ros::Publisher pub_model_coefficients;
ros::Publisher pub_model_inliers;

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
void cloud_cb(const sensor_msgs::PointCloud2& input)
{
	// Convert the sensor_msgs/PointCloud2 data to pcl/PointCloud
	pcl::PointCloud<pcl::PointXYZ> cloud;
	pcl::fromROSMsg (input, cloud);
	
	pcl_msgs::ModelCoefficients ros_coefficients;
	pcl_msgs::PointIndices ros_inliers;
	pcl::ModelCoefficients coefficients;
	pcl::PointIndices inliers;
	
	// Create the segmentation object
	pcl::SACSegmentation<pcl::PointXYZ> seg;
	// Optional
	seg.setOptimizeCoefficients (true);
	// Mandatory
	seg.setModelType (pcl::SACMODEL_PLANE);
	seg.setMethodType (pcl::SAC_RANSAC);
	seg.setDistanceThreshold (0.01);

	seg.setInputCloud (cloud.makeShared ());
	seg.segment (inliers, coefficients);
	
	pcl_conversions::fromPCL(coefficients, ros_coefficients);
	pcl_conversions::fromPCL(inliers, ros_inliers);
	
	pub_model_coefficients.publish(ros_coefficients);
	pub_model_inliers.publish(ros_inliers);

}

int
main (int argc, char** argv)
{
	// Initialize ROS
	ros::init (argc, argv, "Vision/Ransac.cpp");
	ros::NodeHandle nh;
	get_params();
	// Create a ROS subscriber for the input point cloud
	ros::Subscriber sub = nh.subscribe (lidar_topic, 1, cloud_cb);
	// Create a ROS publisher for the output point cloud
	//pub_transform = nh.advertise<sensor_msgs::PointCloud2> ("/vision/tranformed", 10);
	pub_model_coefficients = nh.advertise<pcl_msgs::ModelCoefficients> ("vision/ransac/modelcoefficients", 1);
	pub_model_inliers = nh.advertise<pcl_msgs::PointIndices> ("vision/ransac/inliers", 1);
	// Spin
	ros::spin ();
}

