
### Prepare ROS WorkSpace
    mkdir paper_simfpga_ws
    cd paper_simfpga_ws
    mkdir src
    cd src
    catkin_create_pkg diffdrive_cam_bot std_msgs rospy roscpp
Copy the sources from paper_ros_ws to my directory source of the package. Include the turtlebot2_urdf_model folder.

    (opt) cp -r * ~/catkin_ws/src/
    cd .. (paper_simfpga_ws)
    catkin_make
    roscd diffdrive_cam_turtlebot to check
    roslaunch diffdrive_cam_bot main.launch

### Prepare Verilator workspace
Copy the workspace from paper_verilator_ws in a place.
    
    cd paper_verilator_ws
    make
##### Check the PoC verilator simFPGA
    ./obj_dir/Vdesign_top

### Start it up all together:
- Terminal 1: Launch ROS (`roscore`)
- Terminal 2: Launch PoC verilator simFPGA (`./obj_dir/Vdesign_top`)
- Terminal 3: Launch Gazebo environment (`roslaunch diffdrive_cam_bot main.launch`)

### Possible bug fixes
    source /opt/ros/noetic/setup.bash
    source ~/catkin_ws/devel/setup.bash
    roslaunch diffdrive_cam_bot main.launch
