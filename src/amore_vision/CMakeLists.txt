cmake_minimum_required(VERSION 3.0.2)
project(amore_vision)

## Compile as C++11, supported in ROS Kinetic and newer
#add_compile_options(-std=c++14)

find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  geometry_msgs
  image_transport
  message_generation
  message_runtime
  nav_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  tf
  filters
  message_filters
  pcl_ros
  pcl_conversions
  #OpenCV
)

include_directories(${catkin_INCLUDE_DIRS})

#find_package(PCL REQUIRED)
#find_package(PCL_CONVERSIONS)
find_package(OpenCV REQUIRED)
find_package(PCL REQUIRED)
find_package(Boost REQUIRED system)
#find_package(pcl_conversions REQUIRED)
add_definitions(${PCL_DEFINITIONS})

#include_directories(${pcl_conversions_INCLUDE_DIRS})
include_directories(${OpenCV_INCLUDE_DIRS})


catkin_install_python(PROGRAMS 

src/scan_3d.py 
src/pointcloud2_VLP16.py 
src/vision.py
src/class_test.py

  DESTINATION $(CATKIN_PACKAGE_BIN_DESTINATION)
)



## Generate messages in the 'msg' folder
add_message_files(
  FILES
  usv_pose.msg
  state.msg
  NED_poses.msg
  NED_objects.msg
  NED_acoustic.msg
  propulsion_system.msg
  control_efforts.msg
  grid_point.msg
  to_cam.msg
  ang_mag.msg
  vision.msg
  buoy.msg
  cluster.msg
  cluster_list.msg
  depth_points.msg
  distances.msg
  look_up_table.msg
)



## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  geometry_msgs
  std_msgs
)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES amore
   CATKIN_DEPENDS geographic_msgs geometry_msgs message_generation message_runtime nav_msgs roscpp rospy sensor_msgs std_msgs
#  DEPENDS system_lib
)


# AMORE ADDITION NOTICE: Start of block comment: #[[   End of block comment: ]]
##[[
## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide

add_executable(tf_broadcast src/tf_broadcast.cpp)
add_executable(PCL_TEST src/PCL_TEST.cpp)
add_executable(Voxel_Grid src/Voxel_Grid.cpp)
add_executable(Statistical_Outlier src/Statistical_Outlier.cpp)
add_executable(Ransac src/Ransac.cpp)
add_executable(cylinder src/cylinder.cpp)
add_executable(transform_3d src/transform_3d.cpp)

## Specify libraries to link a library or executable target against

target_link_libraries(tf_broadcast ${catkin_LIBRARIES})
target_link_libraries(PCL_TEST ${catkin_LIBRARIES})
target_link_libraries(Voxel_Grid ${catkin_LIBRARIES})
target_link_libraries(Statistical_Outlier ${catkin_LIBRARIES})
target_link_libraries(Ransac ${catkin_LIBRARIES})
target_link_libraries(cylinder ${catkin_LIBRARIES})
target_link_libraries(transform_3d ${catkin_LIBRARIES})

#]]


install(FILES launch/Vision.launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
install(FILES launch/FAU_Vision.launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
install(FILES launch/test_FAU_Vision.launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
install(FILES launch/cylinder_FAU_Vision.launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
