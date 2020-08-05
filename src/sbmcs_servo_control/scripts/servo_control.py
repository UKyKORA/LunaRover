#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Joy
from rover_msgs.msg import SBMCServoSetting

class ServoController(object):
    def __init__(self):
        self.sub = rospy.Subscriber("/joy", Joy, self.joy_callback)
        self.pub = rospy.Publisher('servo_setting', SBMCServoSetting, queue_size=2)
        self.pos = 90
        self.aim = 0
        
    def joy_callback(self, joy_msg):
        rospy.loginfo(joy_msg)
        if joy_msg.axes[4] > 0:
            self.aim = -1
        elif joy_msg.axes[4] < 0:
            self.aim = 1
        else:
            self.aim = 0

def shutdown():
  print("shutdown time!")
            
def launch():
    rospy.init_node('servo_control')
    con = ServoController()
    msg = SBMCServoSetting();
    
    r = rospy.Rate(25) # 25hz
    counter = 0
    while not rospy.is_shutdown():
        counter += 0.6
        if con.aim < 0:
            con.pos -= int(1*counter)
        elif con.aim > 0:
            con.pos += int(1*counter)
        else:
            counter = 0
            
        if con.pos < 0:
            con.pos = 0
        if con.pos > 180:
            con.pos = 180

        # rospy.loginfo("pos is now%d"%con.pos)

        msg.position = con.pos
        
        con.pub.publish(msg)
        r.sleep()

if __name__ == '__main__':
    rospy.on_shutdown(shutdown)
    launch()

