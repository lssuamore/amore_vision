# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "/home/sensor_jetson/amore_vision/devel/include;/home/sensor_jetson/amore_vision/src/velodyne/velodyne_pointcloud/include".split(';') if "/home/sensor_jetson/amore_vision/devel/include;/home/sensor_jetson/amore_vision/src/velodyne/velodyne_pointcloud/include" != "" else []
PROJECT_CATKIN_DEPENDS = "angles;nodelet;roscpp;roslib;sensor_msgs;tf2_ros;velodyne_driver;velodyne_msgs;dynamic_reconfigure;diagnostic_updater".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lvelodyne_rawdata;-ldata_containers".split(';') if "-lvelodyne_rawdata;-ldata_containers" != "" else []
PROJECT_NAME = "velodyne_pointcloud"
PROJECT_SPACE_DIR = "/home/sensor_jetson/amore_vision/devel"
PROJECT_VERSION = "1.7.0"
