from pyserial.serial import Serial

class TeensyEday():
    def __init__(self, port):
        self.port = Serial(port=port, baudrate=115200)

    def set_vel(self, vel_setting):
        '''teensy accepts serial string of M1255 where
        1 is direction and 255 is pwm'''
        new_vel = 2.55*vel_setting
        direction = vel_setting > 0
        direction = int(direction)
        self.port.write(f"M{direction}{new_vel}")
