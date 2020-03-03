#! /usr/bin/env python3
'''

ROS Node for 4WD controls

'''
import rospy
from geometry_msgs.msg import Twist
from kora.luna_rover.utils.import_factory import ImportFactory

class DriveMotor:
    LIN_MAX = 1
    ANG_MAX = 1
    def __init__(self, motor_controller_dict):
        self.motor_controller_dict = motor_controller_dict
        self.twist_tform_dict = {
            "front_left":     lambda lin, ang: [lin/self.LIN_MAX - ang/self.ANG_MAX]*100,
            "back_left":      lambda lin, ang: [lin/self.LIN_MAX - ang/self.ANG_MAX]*100,
            "front_right":    lambda lin, ang: [lin/self.LIN_MAX + ang/self.ANG_MAX]*100,
            "back_right":     lambda lin, ang: [lin/self.LIN_MAX + ang/self.ANG_MAX]*100
        }

    def callback(self, msg):
        '''consumes a twist message and converts it tank control motor values'''
        for wheel, motor_controller in self.motor_controller_dict.items():
            motor_setting = self.twist_tform_dict[wheel](msg.linear.y, msg.angular.x)
            self.motor_controller_dict[wheel].set_vel(motor_setting)

def launch():
    rospy.init_node('four_wheel_drive')

    motor_controller_str = rospy.get_param("/drive/controller")
    motor_controller = ImportFactory.import_class(motor_controller_str)

    controller_dict = {}
    controller_dict["front_left"] = motor_controller(rospy.get_param("/drive/port1"))
    controller_dict["front_right"] = motor_controller(rospy.get_param("/drive/port2"))
    controller_dict["back_left"] = motor_controller(rospy.get_param("/drive/port3"))
    controller_dict["back_right"] = motor_controller(rospy.get_param("/drive/port4"))

    fwd = DriveMotor(controller_dict)
    DriveMotor.LIN_MAX = rospy.get_param("/drive/lin_max")
    DriveMotor.ANG_MAX = rospy.get_param("/drive/ang_max")

    rospy.Subscriber("/drive_setting", Twist, fwd.callback)
    rospy.spin()

if __name__ == '__main__':
    launch()
