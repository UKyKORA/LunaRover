#! /usr/bin/env python3
'''

ROS Node for 4WD controls

'''
import rospy
from rover_msgs.msg import FWDSetting, FWDReading
from kora.luna_rover.utils.import_factory import ImportFactory

class DriveMotor:
    def __init__(self, motor_controller_dict, pub):
        self.motor_controller_dict = motor_controller_dict
        self.pub = pub

    def callback(self, msg):
        setting_dict = {
            "front_left": msg.front_left,
            "front_right": msg.front_right,
            "back_left": msg.back_left,
            "back_right": msg.back_right
        }
        for wheel, setting, in setting_dict.items():
            self.motor_controller_dict[wheel].set_vel(setting)


def launch():
    rospy.init_node('four_wheel_drive')
    drive_pub = rospy.Publisher('drive_reading', FWDReading, queue_size=10)

    motor_controller_str = rospy.get_param("/drive_motor/controller")
    motor_controller = ImportFactory.import_class(motor_controller_str)

    controller_dict = {}
    controller_dict["front_left"] = motor_controller(rospy.get_param("/drive_motor/port1"))
    controller_dict["front_right"] = motor_controller(rospy.get_param("/drive_motor/port2"))
    controller_dict["back_left"] = motor_controller(rospy.get_param("/drive_motor/port3"))
    controller_dict["back_right"] = motor_controller(rospy.get_param("/drive_motor/port4"))

    fwd = DriveMotor(controller_dict, drive_pub)

    rospy.Subscriber("/drive_setting", FWDSetting, fwd.callback)
    rospy.spin()

if __name__ == '__main__':
    launch()
