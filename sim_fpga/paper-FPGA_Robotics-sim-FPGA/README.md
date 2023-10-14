
### Prepare ROS WorkSpace

    git clone https://github.com/JdeRobot/FPGA-robotics.git

Go to this directory with the cloned project:

    ./FPGA-robotics/sim_fpga/paper-FPGA_Robotics-sim-FPGA/

Create a new directory:

    mkdir paper_simfpga_ws

Now we have 3 directories: paper_ros_ws, paper_simfpga_ws, paper_verilator_ws

    cd paper_simfpga_ws
    mkdir src
    cd src
    catkin_create_pkg diffdrive_cam_bot std_msgs rospy roscpp

Add the directories to .bashrc

    source /opt/ros/noetic/setup.bash
    cd ..
    paper_simfpga_ws> source ./devel/setup.bash

Copy the sources (_diffdrive_cam_bot_ and _turtlebot2_urdf_model_) from paper_ros_ws to this new directory (paper_simfpga_ws):

    cd ../paper_ros_ws
    paper_ros_ws> cp -r * ../paper_simfpga_ws/src/
    cd ../paper_simfpga_ws
    paper_simfpga_ws> catkin_make
    paper_simfpga_ws> roscd diffdrive_cam_bot
Launch the main of diffdrive_cam_bot

    roslaunch diffdrive_cam_bot main.launch

### Prepare Verilator workspace
Go to Verilator workspace.
    
    cd ../paper_verilator_ws
    make

If make is not working, check the imgui directory

##### Check the PoC verilator simFPGA
    ./obj_dir/Vdesign_top

### Start it up all together:

#### Terminal 1: Launch ROS:

    $HOME> source /opt/ros/noetic/setup.bash
    $HOME> roscore

#### Terminal 2: Launch verilator simFPGA:
 
    paper_verilator_ws> ./obj_dir/Vdesign_top

#### Terminal 3: Launch Gazebo environment:

    paper_simfpga_ws> source ./devel/setup.bash
    paper_simfpga_ws> roscd diffdrive_cam_bot
    paper_simfpga_ws> roslaunch diffdrive_cam_bot main.launch

### Possible bug fixes

Source before launching roslaunch:

    source /opt/ros/noetic/setup.bash
    source ./devel/setup.bash
    roslaunch diffdrive_cam_bot main.launch

Set the RED filter in the GUI options  `./obj_dir/Vdesign_top`

