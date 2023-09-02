/*
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 07/11/23
# this is for doing classification based upon input from a velodyne lidar for the maritime domain
# this is looking for cylinders based on a ransac cylinder model
*/
#include <ros/ros.h>
#include "ros/console.h"
#include "time.h"
#include <sstream>
#include <iostream>
#include "math.h"
#include "stdio.h"
#include <string>
// PCL specific includes
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/filters/passthrough.h>
#include <pcl/features/normal_3d.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl_ros/point_cloud.h>

ros::Publisher plane_pub;
ros::Publisher cylinder_pub;

typedef pcl::PointXYZ PointT;
typedef pcl::PointCloud<pcl::PointXYZ> PCLCloud;
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

void
cloud_cb(const sensor_msgs::PointCloud2ConstPtr& input){
	// All the objects needed
	pcl::PCDReader reader;
	pcl::PassThrough<PointT> pass;
	pcl::NormalEstimation<PointT, pcl::Normal> ne;
	pcl::SACSegmentationFromNormals<PointT, pcl::Normal> seg; 
	pcl::PCDWriter writer;
	pcl::ExtractIndices<PointT> extract;
	pcl::ExtractIndices<pcl::Normal> extract_normals;
	pcl::search::KdTree<PointT>::Ptr tree (new pcl::search::KdTree<PointT> ());

	// Datasets
	pcl::PointCloud<PointT>::Ptr cloud (new pcl::PointCloud<PointT>);
	pcl::PointCloud<PointT>::Ptr cloud_filtered (new pcl::PointCloud<PointT>);
	pcl::PointCloud<pcl::Normal>::Ptr cloud_normals (new pcl::PointCloud<pcl::Normal>);
	pcl::PointCloud<PointT>::Ptr cloud_filtered2 (new pcl::PointCloud<PointT>);
	pcl::PointCloud<pcl::Normal>::Ptr cloud_normals2 (new pcl::PointCloud<pcl::Normal>);
	pcl::ModelCoefficients::Ptr coefficients_plane (new pcl::ModelCoefficients), coefficients_cylinder (new pcl::ModelCoefficients);
	pcl::PointIndices::Ptr inliers_plane (new pcl::PointIndices), inliers_cylinder (new pcl::PointIndices);

	// Converting what robot sees to point cloud
	pcl::fromROSMsg (*input, *cloud);  

	if(cloud->size() <= 0)
	return;

	// Build a passthrough filter to remove spurious NaNs
	pass.setInputCloud (cloud);
	pass.setFilterFieldName ("z");
	pass.setFilterLimits (PASS_L, PASS_H);
	pass.filter (*cloud_filtered);

	// Estimate point normals
	ne.setSearchMethod (tree);
	ne.setInputCloud (cloud_filtered);
	ne.setKSearch (NORM_K_SEARCH);
	ne.compute (*cloud_normals);

	// Create the segmentation object for the planar model and set all the parameters
	seg.setOptimizeCoefficients (true);
	seg.setModelType (pcl::SACMODEL_NORMAL_PLANE);
	seg.setNormalDistanceWeight (SEG_DIST_WEIGHT);
	seg.setMethodType (pcl::SAC_RANSAC);
	seg.setMaxIterations (SEG_MAX_ITERATIONS);
	seg.setDistanceThreshold (SEG_DIST_THRESH);
	seg.setInputCloud (cloud_filtered);
	seg.setInputNormals (cloud_normals);
	// Obtain the plane inliers and coefficients
	//seg.segment (*inliers_plane, *coefficients_plane);
	//std::cerr << "Plane coefficients: " << *coefficients_plane << std::endl;

	// Extract the planar inliers from the input cloud
	extract.setInputCloud (cloud_filtered);
	extract.setIndices (inliers_plane);
	extract.setNegative (false);

	// Write the planar inliers to disk
	pcl::PointCloud<PointT>::Ptr cloud_plane (new pcl::PointCloud<PointT> ());
	extract.filter (*cloud_plane);


	// Remove the planar inliers, extract the rest
	extract.setNegative (true);
	extract.filter (*cloud_filtered2);
	extract_normals.setNegative (true);
	extract_normals.setInputCloud (cloud_normals);
	extract_normals.setIndices (inliers_plane);
	extract_normals.filter (*cloud_normals2);

	if(cloud_filtered2->size() <= 0)
	return;

	// Create the segmentation object for cylinder segmentation and set all the parameters
	seg.setOptimizeCoefficients (true);
	seg.setModelType (pcl::SACMODEL_CYLINDER);
	seg.setMethodType (pcl::SAC_RANSAC);
	seg.setNormalDistanceWeight (CYL_DIST_WEIGHT);
	seg.setMaxIterations (CYL_MAX_ITERATIONS);
	seg.setDistanceThreshold (CYL_DIST_THRESH);
	seg.setRadiusLimits (CYL_RADIUS_L, CYL_RADIUS_H);
	seg.setInputCloud (cloud_filtered2);
	seg.setInputNormals (cloud_normals2);

	// Obtain the cylinder inliers and coefficients
	seg.segment (*inliers_cylinder, *coefficients_cylinder);
	// std::cerr << "Cylinder coefficients: " << *coefficients_cylinder << std::endl;

	// Write the cylinder inliers to disk
	extract.setInputCloud (cloud_filtered2);
	extract.setIndices (inliers_cylinder);
	extract.setNegative (false);
	pcl::PointCloud<PointT>::Ptr cloud_cylinder (new pcl::PointCloud<PointT> ());
	extract.filter (*cloud_cylinder);

	plane_pub.publish(cloud_plane);
	cylinder_pub.publish(cloud_cylinder);
}


int
main (int argc, char** argv)
{
	// Initialize ROS
	ros::init (argc, argv, "/vision/cylinder");
	ros::NodeHandle nh;
	get_params();
	// Create a ROS subscriber for the input point cloud
	//ros::Subscriber sub = nh.subscribe (lidar_topic, 1, cloud_cb);
	ros::Subscriber sub = nh.subscribe ("/vision/filtered/voxel_grid", 1, cloud_cb);
	
	// Create a ROS publisher for the output point cloud
	plane_pub = nh.advertise<PCLCloud> ("vision/plane_output", 1);
	cylinder_pub = nh.advertise<PCLCloud> ("vision/cylinder_output", 1);

	// Spin
	ros::spin ();
}
