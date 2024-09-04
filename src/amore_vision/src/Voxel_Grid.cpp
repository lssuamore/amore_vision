/*
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 06/29/2023
# this is for making a voxel grid from a velodyne lidar 
*/
#include <ros/ros.h>
// PCL specific includes
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/voxel_grid.h>
/*
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
*/
ros::Publisher pub_voxel;
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


void cloud_cb (const pcl::PCLPointCloud2ConstPtr& cloud)
{
	pcl::PCLPointCloud2 voxel;
	pcl::VoxelGrid<pcl::PCLPointCloud2> sor;
	sor.setInputCloud (cloud);
	sor.setLeafSize (1, 1, .5);
	sor.filter (voxel);
	pub_voxel.publish(voxel);
}

int
main (int argc, char** argv)
{
	// Initialize ROS
	ros::init (argc, argv, "Vision/Voxel_Grid.cpp");
	ros::NodeHandle nh;
	get_params();
	// Create a ROS subscriber for the input point cloud
	ros::Subscriber sub = nh.subscribe (lidar_topic, 1, cloud_cb);
	// Create a ROS publisher for the output point cloud
	pub_voxel = nh.advertise<sensor_msgs::PointCloud2> ("/vision/filtered/voxel_grid", 10);
	// Spin
	ros::spin ();
}
