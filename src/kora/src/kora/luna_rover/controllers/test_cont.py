#! /usr/bin/env python3
'''controller for testing ros nodes functionality'''

class TestCont():
    def __init__(self, port):
        self.port = port
        print(f"inited with port {port}")

    def set_vel(self, num):
        self.vel = num
        print(f"set_vel to {num}")
