#!/bin/bash

echo "Installing packages..."
sudo apt-get install python-pip python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential libopencv-dev libyaml-cpp-dev

echo "Running rosdep init"
sudo rosdep init

echo "Running rosdep update"
rosdep update


echo "Creating catkin workspace"
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws

python -m pip install --upgrade rosinstall-generator catkin-pkg rosdep rosdistro rosinstall rospkg vcstools wstool

echo "Ros install generator with capability type mobile"
rosinstall_generator robot --rosdistro melodic --deps --tar > melodic-robot.rosinstall

echo "Running wstool init"
wstool init -j8 src melodic-robot.rosinstall

echo "Running rosdep install"
rosdep install --from-paths src --ignore-src --rosdistro melodic -y


echo "Cloning ros modules needed for LunaRover"
cd src/
git clone https://github.com/ros-perception/vision_opencv.git
git clone https://github.com/ros-perception/image_common.git
git clone https://github.com/pal-robotics/ddynamic_reconfigure.git
cd ..

cd ..
echo "Building librealsense"
git clone https://github.com/IntelRealSense/librealsense.git
cd librealsense
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
sudo make install

echo "Running catkin_make"
./src/catkin/bin/catkin_make_isolated -j1 --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/melodic
