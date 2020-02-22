#! /usr/bin/env python3
'''

ROS Node for 4WD controls from a web client

'''
import rospy
from rover_msgs.msg import SingleMotorSetting, FWDReading
from rover_msgs.srv import MotorId, MotorIdResponse
from kora.luna_rover.utils.import_factory import ImportFactory

class SerialMotorControl:
    def __init__(self, serial_controller, motor_pub, available_motors, groups):
        self.serial_controller = serial_controller
        self.pub = motor_pub
        self.client_motors = {}
        # dont do any work in __init__! this is just to make a list comprehesion more readable
        self.available_motors = self._sort_by_groups(available_motors, groups)
        self.groups = groups

    def set_serial_vel(self, msg):
        '''SingleMotorSetting Callback for setting velocity of a single motor id.'''
        self.serial_controller.set_vel(msg.motor_id, msg.motor_value)

    def assign_motor_id(self, msg):
        '''MotorIdRequest Callback for assigning and tracking motors and clients.'''
        response = MotorIdResponse([], 0)
        if msg.connect_or_disconnect and len(self.available_motors) >= msg.motor_count:
            response = self._assign_motors_and_send(msg.motor_count, msg.client_key)
        elif not msg.connect_or_disconnect and msg.client_key in self.client_motors:
            self._pop_motors_from_client(msg.client_key)
        elif msg.connect_or_disconnect:
            rospy.logwarn("Not enough motors to assign to Client Key: {msg.client_key}. Skipping.")
        rospy.loginfo("returning response to client")
        return response

    def _assign_motors_and_send(self, motor_count, client_key):
        if client_key in self.client_motors:
            rospy.logwarn("Client Key: {client_key} already had motors and asked for more."
                          "Reassigning new motors.")
            self._pop_motors_from_client(client_key)

        self.client_motors[client_key] = []

        assigned_ids = []
        for _mtr in range(motor_count):
            new_motor = self.available_motors.pop(0)
            self.client_motors[client_key].append(new_motor)
            assigned_ids.append(new_motor)

        return MotorIdResponse(tuple(assigned_ids), client_key)

    def _pop_motors_from_client(self, client_key):
        # delete client and free up the motor again
        for mtr in self.client_motors[client_key]:
            rospy.loginfo("adding {mtr} back to available")
            self.available_motors.append(mtr)
        self.client_motors.pop(client_key)
        self.available_motors = self._sort_by_groups(self.available_motors, self.groups)

    @staticmethod
    def _sort_by_groups(list_to_sort, sort_order):
        if len(list_to_sort) != len(sort_order):
            rospy.logwarn("Cannot sort groups because the groups and keys are "
                          "different lengths: {len(list_to_sort)} and {len(sort_order)}")
            return list_to_sort
        return [l for _, l in sorted(zip(sort_order, list_to_sort))]


def launch():
    rospy.init_node('drive_serial')
    drive_pub = rospy.Publisher('drive_reading', FWDReading, queue_size=10)

    # setup motor controller from the configurations
    motor_controller_str = rospy.get_param("/drive_motor/controller")
    motor_controller_class = ImportFactory.import_class(motor_controller_str)
    motor_controller = motor_controller_class(rospy.get_param("/drive_motor/port"))


    # setup client handler for single motor drive
    available_motor_keys = rospy.get_param("/drive_motor/available_motors")
    preferred_groupings = rospy.get_param("/drive_motor/preferred_groupings")

    # startup ROS callback handlers
    control_interface = SerialMotorControl(motor_controller, drive_pub, available_motor_keys, preferred_groupings)

    rospy.Subscriber("/drive_setting", SingleMotorSetting, control_interface.set_serial_vel)
    rospy.Service("/motor_id", MotorId, control_interface.assign_motor_id)
    rospy.spin()

if __name__ == '__main__':
    launch()
