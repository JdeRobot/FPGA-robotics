### Guide to examples

#### Example 1 
Evaluation of the system with a Verilog-based design of the filter. SpinalHDL is used to run the Verilog code in the simulation. 
##### Dependencies
To build the simulator you need:
1. C++ compiler
2. Verilator: https://verilator.org/guide/latest/install.html

To regenerate the rtl design from the SpinalHDL sources you will need also sbt.
##### Build the simulator
```
$> cd example1
$> make
```
##### Rebuild RTL design
```
$> sbt "runMain jderobot.TopPixelProcessor"
```
##### Run the simulator
```
obj_dir/VTopPixelProcessor
```

### Example 2
Example for the color filter implemented in Verilog. You can select between three images with a red circle positioned in three different positions. The result of the filter gives the position of the circle within the image.
##### Build the simulator
```
$> cd example2
$> make
```
##### Run the simulator
```
obj_dir/Vdesign_top
```

### Example 3
This is the same example as example 2 but two windows are used to display the simulation and visualization environment information.
##### Build the simulator
```
$> cd example3
$> make
```
##### Run the simulator
```
obj_dir/Vdesign_top
```

### Example 4
This is the same example as example 2 but the webcam connected to the computer is used if available.
##### Dependencies
1. A webcam connected to the computer is required.

##### Build the simulator
```
$> cd example4
$> make
```
##### Run the simulator
```
obj_dir/Vdesign_top
```

### Example 5
This is the same example as example 2 but uses the image obtained from the Gazebo simulator via ROS.
##### Dependencies
1. ROS Noetic.
2. Gazebo.

With Gazebo 9, you can click on "View" and then activate "Collisions" to see the robot.

##### Build the simulator
```
$> cd example5
$> make
```
##### Run the simulator
```
roscore
```
```
rosrun gazebo_ros gazebo --verbose camera.world
```
```
obj_dir/Vdesign_top
```

### Example 6
This is the same example as example 4 but an improved filter is included in veriloj that includes the position and the distance to the object is calculated and displayed as a result.
##### Dependencies
1. A webcam connected to the computer is required.

##### Build the simulator
```
$> cd example6
$> make
```
##### Run the simulator
```
obj_dir/Vdesign_top
```
