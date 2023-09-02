#include "ros/ros.h"
#include "stdio.h"
#include "iostream"
#include "tf/transform_broadcaster.h"



int main(int argc, char **argv){
  ros::init(argc, argv, "scan_filter_node");

	// Ros node reference handle
	ros::NodeHandle nh;

	// Create broadcaster and transform
	static tf::TransformBroadcaster br;
	tf::Transform transform;
	
	// Set broadcast rate
	ros::Rate rate(10.0);

	// Run while
	while (nh.ok()) {
		// Populate transform
		transform.setOrigin( tf::Vector3(0.0, 0.0, 0.0) );
		transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
		br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "wamv/lidar_wamv_link", "grid_frame"));
		rate.sleep();
	}	
	return 0;
}
