# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "diagnostic_updater;dynamic_reconfigure;geometry_msgs;nav_msgs;rosbag;roscpp;sensor_msgs;std_srvs;tf2;tf2_msgs;tf2_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lamcl_sensors;-lamcl_map;-lamcl_pf".split(';') if "-lamcl_sensors;-lamcl_map;-lamcl_pf" != "" else []
PROJECT_NAME = "amcl"
PROJECT_SPACE_DIR = "/home/daidalos99/slam_kw_ws/install"
PROJECT_VERSION = "1.17.1"
