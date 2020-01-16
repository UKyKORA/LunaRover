#! /usr/bin/env python3
'''

ROS Node for dig motor controls

'''
import rospy
from rover_msgs.msg import DigMotorSetting, DigMotorReading
from kora.luna_rover.utils.import_factory import ImportFactory

class DigMotor:
    '''generic class for dig motor controls in ros'''
    def __init__(self, pub, motor_con):
        self.pub = pub
        self.motor_controller = motor_con

    def callback(self, msg):
        '''handle incoming message with requested motor setting'''
        vel_set = msg.vel
        max_current_set = msg.max_curr
        rospy.loginfo(f"DigMotor => Max Current: {max_current_set}, Velocity: {vel_set}")
        self.check_and_set(vel_set, max_current_set)

        dig_mtr_reading = DigMotorReading()
        dig_mtr_reading.current = self.motor_controller.get_current_draw()
        dig_mtr_reading.velocity = self.motor_controller.get_velocity()
        self.pub.publish(dig_mtr_reading)

    def check_and_set(self, vel_set, max_current_set):
        '''check the current and speeds against the maxes and mins for the controller'''
        if max_current_set > self.motor_controller.MAX_CURRENT:
            max_current_set = self.motor_controller.MAX_CURRENT
            rospy.logwarn(f"Got current setting {max_current_set} for a controller with a max current of {self.motor_controller.MAX_CURRENT}")
        if vel_set > 100:
            vel_set = 100
            rospy.logwarn(f"Velocity must be between 100 and -100, got {vel_set}")
        elif vel_set < -100:
            vel_set = -100
            rospy.logwarn(f"Velocity must be between 100 and -100, got {vel_set}")

        self.motor_controller.set_vel(vel_set)
        self.motor_controller.set_max_current(max_current_set)

def launch():
    '''launches a dig motor ros node'''
    rospy.init_node('dig_motor')
    motor_pub = rospy.Publisher("dig_reading", DigMotorReading, queue_size=10)

    motor_controller_str = rospy.get_param("/dig_motor/controller")
    motor_controller = ImportFactory.import_class(motor_controller_str)

    dig_motor = DigMotor(motor_pub, motor_controller)

    rospy.Subscriber("/dig_setting", DigMotorSetting, dig_motor.callback)
    rospy.spin()

if __name__ == "__main__":
    launch()
