import rospy
from rover_msgs.msg import FWDSetting

class WASDControl():
    '''controls drive with WASD'''
    def __init__(self, pub):
        self.pub = pub
        self.directions = {
            "w": (50, 50, 50, 50)
            "a": (50, 50, -50, -50),
            "s": (-50, -50, -50, -50),
            "d": (-50, -50, 50, 50)
        }

    def spin(self):
        while(True):
            direction = input("")
            self.set_speeds(*self.directions.get(direction, None))

    def set_speeds(sp1, sp2, sp3, sp4):
        new_setting = FWDSetting()
        new_setting.front_left = sp1
        new_setting.back_left = sp2
        new_setting.back_right = sp3
        new_setting.front_right = sp4
        self.pub.publish(new_setting)

def launch():
    rospy.init_node('wasd_control')
    drive_pub = rospy.Publisher('drive_setting', FWDSetting, queue_size=10)

    wasd = WASDControl(drive_pub)
    wasd.spin()