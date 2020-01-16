#! /usr/bin/env python
import rospy
import dataClass
#from sensor_msgs.msg import 1data_type
from config_loader import load_yaml_config
#import math

class Motor(object):
    def __init__(self):
        rospy.init_node('motor_node')
        cfg = load_yaml_config('/home/ubuntu/catkin_ws/src/igvc/config.yml')
        if cfg == None:
            rospy.loginfo(rospy.get_caller_id() + ': Unable to load conifg. Halting.')
            rospy.spin()

        self.node_cfg = cfg[rospy.get_caller_id()[1:]]

        self.pub = rospy.Publisher('motor', motorPublish, queue_size=10) # we are publishing current_use and velocity by special class
        self.rate = rospy.Rate(self.node_cfg['rate'])

        rospy.Subscriber('motor', recieve_class, self.recieveData) # subscribe to velocity_control and current_control (special data class?)

		# read motor type from config, configure appropriately

        # this imports the library of our choice, not exact code, but should look like this
        # importlib.get_semantic(cfg['drive-type'])

    def run(self):
        while not rospy.is_shutdown():
            if self.node_cfg['active']:
                # lsten to stuff?

                # readCurrent, output 'currentUse'
                # readSpeed, output 'velocity'

                # set current limit
                # setSpeed
            else:
                # i dunno, do something
            self.dataPublish = motorPublish(currentUse, velocity)
            self.pub.publish(dataPublish)
            self.rate.sleep()

    def recieveData(self, recieve_Class):
        #process data incoming from subscribe

if __name__ == "__main__":
	node = Motor()
	node.run()