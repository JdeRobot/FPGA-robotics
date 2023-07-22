#!/usr/bin/env bash
mkdir build
export GAZEBO_PLUGIN_PATH=$GAZEBO_PLUGIN_PATH:$PWD/build
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:$PWD/models
cd build
rm -rf *
cmake ../
make
cd ~/catkin_ws
catkin build diffdrive_cam_bot
cd -
