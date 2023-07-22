This example takes webcam images and feeds the data to our simulated verilog modules. 
The processed image data is returned, transformed and published to "/cmd_vel".

make clean
make all

roslaunch display.launch


rosrun gazebo_ros gazebo --verbose car.world
