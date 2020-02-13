#! /usr/bin/env python3
'''

ROS Node for 4WD controls

'''
import rospy
from rover_msgs.msg import SingleMotorSetting, FWDReading, MotorId, MotorIdRequest
from kora.luna_rover.utils.import_factory import ImportFactory

class SerialMotorControl:
    def __init__(self, serial_controller, motor_pub, client_pub, available_motors):
        self.serial_controller = serial_controller
        self.pub = motor_pub
        self.client_pub = client_pub
        self.client_motors = {}
        self.available_motors = available_motors

    def callback(self, msg):
        self.serial_controller.set_vel(msg.motor_id, msg.motor_value)

    def assign_motor_id(self, msg):
        if msg.connect_or_disconnect and self.available_motors != []:

            # track client
            self.client_motors[msg.client_key] = self.available_motors.pop()

            # send ROS message out to client
            motor_assign_msg = MotorId()
            motor_assign_msg.assigned_id = self.client_motors[msg.client_key]
            motor_assign_msg.client_key = msg.client_key
            self.client_pub.publish(motor_assign_msg)

        elif not msg.connect_or_disconnect and msg.client_key in self.client_motors:

            # delete client and free up the motor again
            self.available_motors.append(self.client_motors[msg.client_key])
            self.client_motors.pop(msg.client_key)


def launch():
    rospy.init_node('drive_serial')
    drive_pub = rospy.Publisher('drive_reading', FWDReading, queue_size=10)

    # setup motor controller from the configurations
    motor_controller_str = rospy.get_param("/drive_motor/controller")
    motor_controller_class = ImportFactory.import_class(motor_controller_str)
    motor_controller = motor_controller_class(rospy.get_param("/drive_motor/port"))


    # setup client handler for single motor drive
    motor_id_pub = rospy.Publisher('motor_id', MotorId, queue_size=10)
    available_motor_keys = rospy.get_param("/drive_motor/available_motors")

    # startup ROS callback handlers
    control_interface = SerialMotorControl(motor_controller, drive_pub, motor_id_pub,
                                           available_motor_keys)

    rospy.Subscriber("/drive_setting", SingleMotorSetting, control_interface.callback)
    rospy.Subscriber("/motor_id_request", MotorIdRequest, control_interface.assign_motor_id)
    rospy.spin()

if __name__ == '__main__':
    launch()
