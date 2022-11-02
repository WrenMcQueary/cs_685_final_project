#!/bin/bash

# Actual execution
export PYTHONPATH="/opt/ros/noetic/lib/python3/dist-packages"
source /opt/ros/noetic/setup.bash
rosdep update
sudo apt update
sudo apt dist-upgrade

sudo apt install ros-noetic-catkin python3-catkin-tools python3-osrf-pycommon

sudo apt install python3-wstool

mkdir moveit_workspace_folder
cd moveit_workspace_folder
mkdir src
cd src

wstool init .
wstool merge -t . https://raw.githubusercontent.com/ros-planning/moveit/master/moveit.rosinstall
wstool remove moveit_tutorials
wstool update -t .

git clone https://github.com/ros-planning/moveit_tutorials.git -b master
git clone https://github.com/ros-planning/panda_moveit_config.git -b melodic-devel

set -e    # Make the script terminate on an error

# Approach 1
rosdep install -y --from-paths . --ignore-src --rosdistro noetic

# Approach 2
#sudo sh -c 'echo "deb http://packages.ros.org/ros-testing/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
#sudo apt update

cd ..
catkin config --extend /opt/ros/${ROS_DISTRO} --cmake-args -DCMAKE_BUILD_TYPE=Release
catkin build

source ~/Documents/CS685/jupyter_notebooks/homework_assignments/P1_ROS_kinematics_control/moveit_workspace_folder/devel/setup.bash

