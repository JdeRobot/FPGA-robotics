# ROS environment
**ROS Distribution: Noetic**
**Gazebo version: 11.12.0**

**ROS dependencies:**
- pluginlib
- cpp_common
- catkin
- genmsg
- gencpp
- geneus
- gennodejs
- genlisp
- genpy
- message_generation
- rostime
- roscpp_traits
- roscpp_serialization
- message_runtime
- rosbuild
- rosconsole
- rosconsole_bridge
- std_msgs
- rosgraph_msgs
- xmlrpcpp
- roscpp
- urdf
- controller_interface
- geometry_msgs
- rosbag_migration_rule
- trajectory_msgs
- actionlib_msgs
- control_msgs
- ros_environment
- rospack
- roslib
- rosgraph
- rospy
- topic_tools
- roslz4
- rosbag_storage
- std_srvs
- rosbag
- rosmsg
- rosservice
- dynamic_reconfigure
- hardware_interface
- nav_msgs
- realtime_tools
- message_filters
- rosclean
- rosmaster
- rosout
- rosparam
- rosunit
- roslaunch
- rostopic
- rosnode
- roswtf
- sensor_msgs
- rostest
- actionlib
- tf2_msgs
- tf2
- tf2_py
- tf2_ros
- tf

## Create the ROS package
```
$ cd ~/catkin_ws/src/
$ catkin_create_pkg diffdrive_cam_bot std_msgs rospy roscpp
```
Copy the *diffdrive_cam_bot* sources in the package created and make.
```
$ cp -r diffdrive_cam_bot/* ~/catkin_ws/src/
$ cd ~/catkin_ws
$ catkin_make
```
### Start up the package
Launch roscore in a terminal.
```
$ roscore
```

Start Richard Example to activate the robot movement.

Launch Gazebo environment in other terminal.
```
(optional) $ source /opt/ros/noetic/setup.bash
$ source ~/catkin_ws/devel/setup.bash
$ roslaunch diffdrive_cam_bot main.launch
```
Start PoC Example 9 to activate the robot movement.
