#! /usr/bin/env python3
'''

ROS Node for 4WD controls

'''
import rospy
from rover_msgs.msg import SingleMotorSetting, FWDReading
from kora.luna_rover.utils.import_factory import ImportFactory

class SerialMotorControl:
    def __init__(self, serial_controller, pub):
        self.serial_controller = serial_controller
        self.pub = pub

    def callback(self, msg):
        self.serial_controller.set_vel(msg.motor_id, msg.motor_value)


def launch():
    rospy.init_node('drive_serial')
    drive_pub = rospy.Publisher('drive_reading', FWDReading, queue_size=10)

    motor_controller_str = rospy.get_param("/drive_motor/controller")
    motor_controller_class = ImportFactory.import_class(motor_controller_str)

    motor_controller = motor_controller_class(rospy.get_param("/drive_motor/port"))

    control_interface = SerialMotorControl(motor_controller, drive_pub)

    rospy.Subscriber("/drive_setting", SingleMotorSetting, control_interface.callback)
    rospy.spin()

if __name__ == '__main__':
    launch()
