
### Prepare ROS WorkSpace
    mkdir paper_simfpga_ws
    cd paper_simfpga_ws
    mkdir src
    cd src
    catkin_create_pkg diffdrive_cam_bot std_msgs rospy roscpp
    cd ..
    catkin_make
		
Copy the sources from JdeRobot repository *~/FPGA-robotics/sim_fpga/paper-FPGA_Robotics-sim-FPGA/paper_ros_ws/*  to the directory *src* of the ros package *~/paper_simfpga_ws/src/*. Include the turtlebot2_urdf_model folder.

    (New terminal)
    git clone https://github.com/JdeRobot/FPGA-robotics.git
    cp -r ~/FPGA-robotics/sim_fpga/paper-FPGA_Robotics-sim-FPGA/paper_ros_ws/* paper_simfpga_ws/src/
    
    cd ~/paper_simfpga_ws
    catkin_make
    
Add the directories to .bashrc

    source /opt/ros/noetic/setup.bash
    source ~/paper_simfpga_ws/devel/setup.bash
		
Restart terminal
		
Check that all is right

    roscd diffdrive_cam_bot
		
Launch the main of diffdrive_cam_bot

    roslaunch diffdrive_cam_bot main.launch

### Prepare Verilator workspace
Go to Verilator workspace.
    
    cd ~/FPGA-robotics/sim_fpga/paper-FPGA_Robotics-sim-FPGA/paper_verilator_ws
    make
		
##### Check the PoC verilator simFPGA
    ./obj_dir/Vdesign_top

### Start it up all together:
- Terminal 1: Launch ROS (`roscore`)
- Terminal 2: Launch PoC verilator simFPGA (`./obj_dir/Vdesign_top`)
- Terminal 3: Launch Gazebo environment (`roslaunch diffdrive_cam_bot main.launch`)
