# Rover Drive for KORA


## ROS Package

* Holds the drive control configs and scripts for each robot.
* Holds the top level launch files for the robots (for now)

## To add:
```
cd ${CATKIN_WS}/src
git submodule add https://github.com/UKyKORA/RoverDrive.git drive
```

_NOTE: This respository is meant to be a submodule for a larger ROS catkin workspace._

## TODOs 

* Move Twist transforms into the controller classes to make the drive_4_motor script more generic
* Make a dedicated package for holding the top level launch files for the robots. 
