#! /usr/bin/env python3
'''

ROS Node to convert joy messages into motor drive commands for serial

'''
import rospy
from rover_msgs.msg import SingleMotorSetting, FWDReading
from rover_msgs.srv import MotorId, MotorIdResponse
from kora.luna_rover.utils.import_factory import ImportFactory

class SerialMotorControl:
    def __init__(self, serial_controller, motor_pub, available_motors, groups):
        self.serial_controller = serial_controller
        self.pub = motor_pub
        # dont do any work in __init__! this is just to make a list comprehesion more readable
        self.available_motors = self._sort_by_groups(available_motors, groups)
        self.groups = groups

    def set_serial_vel(self, msg):
        '''SingleMotorSetting Callback for setting velocity of a single motor id.'''
        self.serial_controller.set_vel(msg.motor_id, msg.motor_value)


def launch():
    rospy.init_node('drive_joy')
    drive_pub = rospy.Publisher('drive_reading', FWDReading, queue_size=10)

    # setup motor controller from the configurations
    motor_controller_str = rospy.get_param("/drive_motor/controller")
    motor_controller_class = ImportFactory.import_class(motor_controller_str)
    motor_controller = motor_controller_class(rospy.get_param("/drive_motor/port"))

    # startup ROS callback handlers
    control_interface = SerialMotorControl(motor_controller, drive_pub, available_motor_keys, preferred_groupings)

    rospy.Subscriber("/drive_setting", SingleMotorSetting, control_interface.set_serial_vel)
    
    rospy.spin()

if __name__ == '__main__':
    launch()
