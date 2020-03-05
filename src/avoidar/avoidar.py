#!/usr/bin/env python
import rospy
from std_msgs.msg import Bool
from sensor_msgs.msg import LaserScan

class Avoidar():
    def __init__(self):
        self.sub = rospy.Subscriber('/scan', LaserScan, self.laser_callback)
        self.pub = rospy.Publisher("/avoidar_output", Bool, queue_size=10)

    def laser_callback(self, msg):
        right_ranges = msg.ranges[0:29]
        left_ranges =  msg.ranges[330:359]
        #print ranges 
        #extend(msg.ranges[330:359])
        
        m = Bool()
        m.data = False

        for r in right_ranges:
            if r < 0.4:
                m.data = True
                break

        for r in left_ranges:
            if r < 0.4:
                m.data = True
                break
        self.pub.publish(m)

if __name__ == '__main__':
    rospy.init_node("avoidar")
    n = Avoidar()
    rospy.spin()
