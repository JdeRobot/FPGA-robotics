# RichardExample
This example takes from the simulated Gazebo environment (webcam+robot) and feeds the data to our simulated verilog modules in Verilator. 
The processed image data and the control in Verilog return the DPS of each wheel, these are transformed and published in a topic with format "/cmd_vel".

## Build the example:
	make clean
	make all

## Run the example:

Launch roscore in a terminal.
```
$ roscore
```
Launch the example in another terminal.
```
$ ./obj_dir/Vdesign_top
```
Launch Gazebo environment in other terminal.
```
(optional) $ source /opt/ros/noetic/setup.bash
$ source ~/catkin_ws/devel/setup.bash
$ roslaunch diffdrive_cam_bot main.launch
```