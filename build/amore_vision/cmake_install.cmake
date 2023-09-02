# Install script for directory: /home/sensor_jetson/amore_vision/src/amore_vision

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sensor_jetson/amore_vision/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/$(CATKIN_PACKAGE_BIN_DESTINATION)" TYPE PROGRAM FILES "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/scan_3d.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/$(CATKIN_PACKAGE_BIN_DESTINATION)" TYPE PROGRAM FILES "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/pointcloud2_VLP16.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/$(CATKIN_PACKAGE_BIN_DESTINATION)" TYPE PROGRAM FILES "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/vision.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/$(CATKIN_PACKAGE_BIN_DESTINATION)" TYPE PROGRAM FILES "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/class_test.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision/msg" TYPE FILE FILES
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/usv_pose.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/state.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_poses.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_objects.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/NED_acoustic.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/propulsion_system.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/control_efforts.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/grid_point.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/to_cam.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/ang_mag.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/vision.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/buoy.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/cluster_list.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/depth_points.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/distances.msg"
    "/home/sensor_jetson/amore_vision/src/amore_vision/msg/look_up_table.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision/cmake" TYPE FILE FILES "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/amore_vision-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sensor_jetson/amore_vision/devel/include/amore_vision")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sensor_jetson/amore_vision/devel/share/roseus/ros/amore_vision")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sensor_jetson/amore_vision/devel/share/common-lisp/ros/amore_vision")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sensor_jetson/amore_vision/devel/share/gennodejs/ros/amore_vision")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/sensor_jetson/amore_vision/devel/lib/python2.7/dist-packages/amore_vision")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/sensor_jetson/amore_vision/devel/lib/python2.7/dist-packages/amore_vision")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/amore_vision.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision/cmake" TYPE FILE FILES "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/amore_vision-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision/cmake" TYPE FILE FILES
    "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/amore_visionConfig.cmake"
    "/home/sensor_jetson/amore_vision/build/amore_vision/catkin_generated/installspace/amore_visionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision" TYPE FILE FILES "/home/sensor_jetson/amore_vision/src/amore_vision/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision" TYPE FILE FILES "/home/sensor_jetson/amore_vision/src/amore_vision/launch/Vision.launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision" TYPE FILE FILES "/home/sensor_jetson/amore_vision/src/amore_vision/launch/FAU_Vision.launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision" TYPE FILE FILES "/home/sensor_jetson/amore_vision/src/amore_vision/launch/test_FAU_Vision.launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/amore_vision" TYPE FILE FILES "/home/sensor_jetson/amore_vision/src/amore_vision/launch/cylinder_FAU_Vision.launch")
endif()

