export ROS_IP=`hostname -I | awk '{print $1}'`
export ROS_MASTER_URI=http://`hostname -I | awk '{print $1}'`:11311
roscore > /dev/null & 
sleep 2
roslaunch joy joy_twist.launch > /dev/null & 
sleep 2
roslaunch drive drive_ernie.launch > /dev/null &
sleep 1
rostopic echo /drive_setting
# on exit run `killall roscore`
