#! /usr/bin/env python3
'''controller for testing ros nodes functionality'''

class TestCont():
    def __init__(self, port):
        self.port = port
        print(f"inited with port {port}")

    def set_vel(self, num):
        self.vel = num
        print(f"set_vel to {num}")

    def set_vels_from_dict(self, vel_dict):
        ctl_str = "FL:{front_left}, FR:{front_right}, BL:{back_left}, BR:{back_right}".format(**vel_dict)
        print(ctl_str)
