export ROS_MASTER_URI=http://$1:11311
export ROS_IP=`hostname -I | awk '{print $1}'`
rosrun joy joy_node
