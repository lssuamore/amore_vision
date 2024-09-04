/*
#Author: Caleb Wilson (cwilson15@lssu.edu)
# Date: 07/06/23
# this is for doing classification based upon input from a velodyne lidar for the maritime domain
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
typedef pcl::PointCloud<pcl::PointXYZ> PCLCloud;
//Declarations of matrix formulas 
Eigen::MatrixXd  HT_NED_LP(4, 4), HT_NED_USV(4,4), HT_USV_VELODYNE(4,4), HT_VELODYNE_LP(4,4);
//Declaration of rosparams being pulled in 
float lidar_offset_x,lidar_offset_y,lidar_offset_z;
//Declaration of poses for the USV in NED
float x_usv_NED,y_usv_NED,z_usv_NED,phi_usv_NED,theta_usv_NED,psi_usv_NED;
float PASS_L,PASS_H,NORM_K_SEARCH,SEG_DIST_WEIGHT,SEG_MAX_ITERATIONS,SEG_DIST_THRESH;
float CYL_DIST_WEIGHT,CYL_MAX_ITERATIONS,CYL_DIST_THRESH,CYL_RADIUS_H,CYL_RADIUS_L;

std::string IMU_topic, lidar_topic;

ros::Publisher test_pub;

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
}


void cloud_cb(const sensor_msgs::PointCloud2 input){

	int x = 1;
}


int main (int argc, char** argv)
{
	// Initialize ROS
	ros::init (argc, argv, "/PCL/TEST");
	ros::NodeHandle test;
	get_params();
	//get_params();
	// Create a ROS subscriber for the input point cloud
	ros::Subscriber sub = test.subscribe (lidar_topic, 1, cloud_cb);

	// Create a ROS publisher for the output point cloud
	test_pub = test.advertise <sensor_msgs::PointCloud2> ("/vision/test", 10);
	// Spin
	ros::spin ();
}
/*
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

#include <pcl/filters/statistical_outlier_removal.h>


#include <ros/ros.h>
#include <string>
#include "stdio.h"
#include "iostream"
// PCL specific includes
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud_conversion.h>
#include <geometry_msgs/Point32.h>

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
#include <tf/transform_datatypes.h>
#include <tf/transform_listener.h>
#include <tf2_ros/buffer.h>
#include <pcl_ros/transforms.h>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/conversions.h>
#include "tf/transform_broadcaster.h"
#include <pcl/PCLPointCloud2.h>


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


const std::string frame = "test_frame";
const sensor_msgs::PointCloud2 input_pc2;
tf::Transform transform;

#define PI 3.14159265

ros::Publisher pub_transform;
ros::Publisher pub_model_coefficients;
float psi_NED;
float USV_X_NED;
float USV_Y_NED;


void cloud_cb(const sensor_msgs::PointCloud2& input)
{
	int x = 1;

}

int
main (int argc, char** argv)
{
	// Initialize ROS
	ros::init (argc, argv, "Vision/Voxel_Grid.cpp");
	ros::NodeHandle nh;
	// Create a ROS subscriber for the input point cloud
	ros::Subscriber sub = nh.subscribe ("/velodyne_points", 1, cloud_cb);
	// Create a ROS publisher for the output point cloud
	//pub_transform = nh.advertise<sensor_msgs::PointCloud2> ("/vision/tranformed", 10);
	//pub_model_coefficients = nh.advertise<pcl_msgs::ModelCoefficients> ("vision/ransac/modelcoefficients", 1);
	// Spin
	ros::spin ();
}


/*

	// Publish the model coefficients
	pub.publish (coefficients);


	sensor_msgs::PointCloud pc1;
	sensor_msgs::PointCloud2 pc2;
	sensor_msgs::convertPointCloud2ToPointCloud(input, pc1);
	
	gen = sensor_msgs.point_cloud2.read_points(input, skip_nans=True, field_names=("x", "y", "z", "intensity", "ring"));
	psi_NED = PI/4;
	USV_X_NED = 0;
	USV_Y_NED = 0;
	
	for(int i = 0 ; i < pc1.points.size(); ++i){
		geometry_msgs::Point32 point;
		/*
		point.x = pc1.points[i].x;
		point.y = pc1.points[i].y;
		point.z = pc1.points[i].z;
		
		USV_X_NED = USV_X_NED + (pc1.points[i].x * (cos(psi_NED*(180/PI))));
		USV_Y_NED = USV_Y_NED + (pc1.points[i].y * (sin(psi_NED*(180/PI))));
		pc1.points[i].x = USV_X_NED;
		pc1.points[i].y = USV_Y_NED;
		pc1.points[i].z = pc1.points[i].z;
	}

	sensor_msgs::convertPointCloudToPointCloud2(pc1, pc2);
	pub_transform.publish(pc2);


	//const sensor_msgs::PointCloud2 input_pc2;
	//input_pc2 = input;
	
	sensor_msgs::PointCloud2 transformed;
	tf::Transform transform;
	transform.setOrigin( tf::Vector3(3.0, 0.0, 5.0) );
	transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
	
	pcl::transformPointCloud(frame,transform,input,transformed);


	//convert the sensor::msgs PC2 into a PCL type
	pcl::PCLPointCloud2 pcl_pc2;
	pcl_conversions::toPCL(*input,pcl_pc2);
	pcl::PointCloud<pcl::PointXYZ>::Ptr temp_cloud(new pcl::PointCloud<pcl::PointXYZ>);
	pcl::fromPCLPointCloud2(pcl_pc2,*temp_cloud);
	//temp cloud is now the PCL object and can be tranformed with
	static tf::TransformBroadcaster br;
	static tf::TransformListener li;
	tf::Transform transform;
	transform.setOrigin( tf::Vector3(3.0, 0.0, 5.0) );
	transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
	br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "velodyne", "target_frame"));

	pcl::PCLPointCloud2 transformed;
	pcl::PointCloud<pcl::PointXYZ>::Ptr temp_cloud2(new pcl::PointCloud<pcl::PointXYZ>);
	pcl::fromPCLPointCloud2(transformed,*temp_cloud2);
	
	pcl_ros::transformPointCloud(temp_cloud, temp_cloud2, transform);

void cloud_cb (const pcl::PCLPointCloud2ConstPtr& cloud)
{
	pcl_conversions::toPCL(*cloud, pcl_pc);
	
	pcl::PCLPointCloud2 transformed;
	static tf::TransformBroadcaster br;
	static tf::TransformListener li;
	
	
	tf::Transform transform;
	transform.setOrigin( tf::Vector3(3.0, 0.0, 5.0) );
	transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
	br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "velodyne", "target_frame"));

	pcl_ros::transformPointCloud(cloud ,transformed, transform);
	
	pcl_ros::transformPointCloud (const std::string &target_frame, const sensor_msgs::PointCloud2 &in, sensor_msgs::PointCloud2 &out, const tf::TransformListener &tf_listener)
	
	
	
	
 	Transform a sensor_msgs::PointCloud2 dataset from its frame to a given TF target frame. 

	pub_transform.publish(transformed);
	
	// Convert the sensor_msgs/PointCloud2 data to pcl/PointCloud
	pcl::PointCloud<pcl::PointXYZ> cloud;
	pcl::fromROSMsg (input, cloud);
	
	pcl_msgs::ModelCoefficients ros_coefficients;
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
	
	pub_model_coefficients.publish(ros_coefficients);


typedef pcl::PointCloud<pcl::PointXYZ> PCLCloud;
//Declarations of matrix formulas 
Eigen::MatrixXd  HT_NED_LP(4, 4), HT_NED_USV(4,4), HT_USV_VELODYNE(4,4), HT_VELODYNE_LP(4,4);
//Declaration of rosparams being pulled in 
float lidar_offset_x,lidar_offset_y,lidar_offset_z;
//Declaration of poses for the USV in NED
float x_usv_NED,y_usv_NED,z_usv_NED,phi_usv_NED,theta_usv_NED,psi_usv_NED;



ros::Publisher trans_pub;

void get_params(){
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
		HT_VELODYNE_LP << 1,0,0,pc1.points[i].x,0,1,0,pc1.points[i].y,0,0,1,pc1.points[i].z,0,0,0,1;
		//the matrix multiplication to convert the points to global 
		HT_NED_LP = HT_NED_USV*HT_USV_VELODYNE*HT_VELODYNE_LP;
		/* lol this probably needs  to be changed to some sort of array point array
		x_transformed[i] = HT_NED_VELODYNE(12);
		y_transformed[i] = HT_NED_VELODYNE(13);
		z_transformed[i] = HT_NED_VELODYNE(14);

		pcl::PointXYZ pt;
		pt.x = HT_NED_LP(12);
		pt.y = HT_NED_LP(13);
		pt.z = HT_NED_LP(14);
		cloud.points.push_back(pt);
	}
	pcl::toPCLPointCloud2(cloud,ros_cloud);
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
	HT_NED_USV << cos(theta_usv_NED)*cos(psi_usv_NED), sin(phi_usv_NED)*sin(theta_usv_NED)*cos(psi_usv_NED)-cos(phi_usv_NED)*sin(psi_usv_NED), 
	cos(phi_usv_NED)*sin(theta_usv_NED)*cos(psi_usv_NED)+sin(phi_usv_NED)*sin(psi_usv_NED),cos(theta_usv_NED)*sin(psi_usv_NED), sin(phi_usv_NED)*sin(theta_usv_NED)*sin(psi_usv_NED)+cos(phi_usv_NED)*cos(psi_usv_NED), 
	cos(phi_usv_NED)*sin(theta_usv_NED)*sin(psi_usv_NED)-sin(phi_usv_NED)*cos(psi_usv_NED),-sin(theta_usv_NED), sin(phi_usv_NED)*cos(theta_usv_NED), cos(phi_usv_NED)*cos(theta_usv_NED);
}



int main (int argc, char** argv)
{
	// Initialize ROS
	ros::init (argc, argv, "/PCL/TEST");
	ros::NodeHandle vel_transform;

	get_params();
	// Create a ROS subscriber for the input point cloud
	ros::Subscriber sub = vel_transform.subscribe ("/velodyne_points", 1, cloud_cb);
	ros::Subscriber sub2 = vel_transform.subscribe ("/NA_nav_ned", 1, pose_cb);

	// Create a ROS publisher for the output point cloud
	trans_pub = vel_transform.advertise <sensor_msgs::PointCloud2> ("/vision/tranformed", 10);
	// Spin
	ros::spin ();
}
}*/




