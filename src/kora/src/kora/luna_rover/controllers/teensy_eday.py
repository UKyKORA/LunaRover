#! /usr/bin/env python3

from serial import Serial

class TeensyEday():
    def __init__(self, port):
        print('init teensy serial interface')
        self.port = Serial(port=port, baudrate=115200)
        self.motor_values = [0,0,0,0]

    def set_vel(self, motor_id, motor_value):
        # TODO: check if id is 1-4
        self.motor_values[motor_id] = motor_value

        '''teensy accepts serial string of M1255 where
        1 is direction and 255 is pwm'''

        print('sending ', self.get_formatted_command())
        #new_vel = 2.55*vel_setting
        #direction = vel_setting > 0
        #direction = int(direction)
        self.port.write(bytes(self.get_formatted_command(), 'utf-8'))
        #self.port.write(f"M{direction}{new_vel}")

    def get_formatted_command(self):
        # return string to send to teensy
        formatted_speed = "M"
        for mval in self.motor_values:
            # direction bit
            if mval < 0:
                formatted_speed += "0"
            else:
                formatted_speed += "1"
            # speed value
            formatted_speed += "{0:0>3}".format(int(abs(mval)*2.5))

        formatted_speed += "\n"
        return formatted_speed

