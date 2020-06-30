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
    def __init__(self, drive_controller):
        self.drive_controller = drive_controller
        self.twist_tform_dict = {
            "front_left":     lambda lin, ang: (lin/self.LIN_MAX - ang/self.ANG_MAX)*100,
            "back_left":      lambda lin, ang: (lin/self.LIN_MAX - ang/self.ANG_MAX)*100,
            "front_right":    lambda lin, ang: (lin/self.LIN_MAX + ang/self.ANG_MAX)*100,
            "back_right":     lambda lin, ang: (lin/self.LIN_MAX + ang/self.ANG_MAX)*100
        }

    def callback(self, msg):
        '''consumes a twist message and converts it tank control motor values'''
        motor_settings = self._perfom_tform_on_drive_motors(msg.linear.y, msg.angular.x)
        self.drive_controller.set_vels_from_dict(motor_settings)

    def _perfom_tform_on_drive_motors(self, linear_y, angular_x):
        return {wheel: tform(linear_y, angular_x) for wheel, tform in self.twist_tform_dict.items()}

def launch():
    rospy.init_node('four_wheel_drive')

    motor_controller_str = rospy.get_param("/drive/controller")
    motor_controller = ImportFactory.import_class(motor_controller_str)
    motor_controller_instance = motor_controller(rospy.get_param("/drive/port"))

    fwd = DriveMotor(motor_controller_instance)
    DriveMotor.LIN_MAX = rospy.get_param("/drive/lin_max")
    DriveMotor.ANG_MAX = rospy.get_param("/drive/ang_max")

    rospy.Subscriber("/drive_setting", Twist, fwd.callback)
    rospy.spin()

if __name__ == '__main__':
    launch()
