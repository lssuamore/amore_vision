# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "amore_vision: 17 messages, 0 services")

set(MSG_I_FLAGS "-Iamore_vision:/home/sensor_jetson/amore_vision/src/amore_vision/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(amore_vision_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg" "std_msgs/String:geometry_msgs/Point32:amore_vision/depth_points"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg" "geometry_msgs/Point32:amore_vision/buoy"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg" ""
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg" "std_msgs/Float64:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg" ""
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg" "std_msgs/Float64:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg" "std_msgs/Bool:std_msgs/Int32:std_msgs/Header"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg" "std_msgs/String:amore_vision/depth_points:amore_vision/cluster:geometry_msgs/Point32"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg" ""
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg" ""
)

get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg" NAME_WE)
add_custom_target(_amore_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "amore_vision" "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)
_generate_msg_cpp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
)

### Generating Services

### Generating Module File
_generate_module_cpp(amore_vision
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(amore_vision_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(amore_vision_generate_messages amore_vision_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_cpp _amore_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amore_vision_gencpp)
add_dependencies(amore_vision_gencpp amore_vision_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amore_vision_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)
_generate_msg_eus(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
)

### Generating Services

### Generating Module File
_generate_module_eus(amore_vision
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(amore_vision_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(amore_vision_generate_messages amore_vision_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_eus _amore_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amore_vision_geneus)
add_dependencies(amore_vision_geneus amore_vision_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amore_vision_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)
_generate_msg_lisp(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
)

### Generating Services

### Generating Module File
_generate_module_lisp(amore_vision
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(amore_vision_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(amore_vision_generate_messages amore_vision_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_lisp _amore_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amore_vision_genlisp)
add_dependencies(amore_vision_genlisp amore_vision_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amore_vision_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)
_generate_msg_nodejs(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
)

### Generating Services

### Generating Module File
_generate_module_nodejs(amore_vision
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(amore_vision_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(amore_vision_generate_messages amore_vision_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_nodejs _amore_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amore_vision_gennodejs)
add_dependencies(amore_vision_gennodejs amore_vision_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amore_vision_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg;/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)
_generate_msg_py(amore_vision
  "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
)

### Generating Services

### Generating Module File
_generate_module_py(amore_vision
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(amore_vision_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(amore_vision_generate_messages amore_vision_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg" NAME_WE)
add_dependencies(amore_vision_generate_messages_py _amore_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(amore_vision_genpy)
add_dependencies(amore_vision_genpy amore_vision_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS amore_vision_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/amore_vision
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(amore_vision_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(amore_vision_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/amore_vision
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(amore_vision_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(amore_vision_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/amore_vision
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(amore_vision_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(amore_vision_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/amore_vision
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(amore_vision_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(amore_vision_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/amore_vision
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(amore_vision_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(amore_vision_generate_messages_py std_msgs_generate_messages_py)
endif()
