'''
Title: RoverControl Demonstration 1
Author: Joshua Ashley
Description:
    A class demonstrating OOP by setting rover controls
Revisions:
    Josh A. 10-25-19 Initial Version.
'''

class RoverControl:
    '''class for creating rover control objects that store our control values'''
    def __init__(self):
        self.front_right_wheel = 0
        self.front_left_wheel = 0
        self.back_right_wheel = 0
        self.back_left_wheel = 0
        self.dig_belt = 'off'
        self.dig_actuator = 0
        self.dig_arm_actuator = 0

    def move_forward(self, speed):
        '''sets wheel speeds for forward movement'''
        self.front_right_wheel = speed
        self.front_left_wheel = speed
        self.back_right_wheel = speed
        self.back_left_wheel = speed

    def move_backward(self, speed):
        '''sets wheel speeds for backward movement'''
        self.front_right_wheel = -1*speed
        self.front_left_wheel = -1*speed
        self.back_right_wheel = -1*speed
        self.back_left_wheel = -1*speed

    def turn_left(self, speed):
        '''sets wheel speeds for left turn'''
        self.front_right_wheel = -1*speed
        self.front_left_wheel = speed
        self.back_right_wheel = -1*speed
        self.back_left_wheel = speed

    def turn_right(self, speed):
        '''sets wheel speeds for left turn'''
        self.front_right_wheel = speed
        self.front_left_wheel = -1*speed
        self.back_right_wheel = speed
        self.back_left_wheel = -1*speed

    def start_dig(self):
        '''starts the dig'''
        self.dig_belt = 'on'
        self.dig_actuator = 'on'

    def stop_dig(self):
        '''stops the dig'''
        self.dig_belt = 'off'
        self.dig_actuator = 'off'

    def lower_arm_belt(self, speed):
        '''lowers the dig arm'''
        self.dig_arm_actuator = -1*speed

    def raise_arm_belt(self, speed):
        '''raises the dig arm'''
        self.dig_arm_actuator = speed

    def display_values(self):
        '''display my values'''
        print(f'front left wheel: {self.front_left_wheel}')
        print(f'back left wheel: {self.back_left_wheel}')
        print(f'front right wheel: {self.front_right_wheel}')
        print(f'back right wheel: {self.back_right_wheel}')
        print(f'dig arm actuator: {self.dig_arm_actuator}')
        print(f'dig belt: {self.dig_belt}')
        print(f'dig belt actuator: {self.dig_actuator}')


def start_my_rover_repl():
    '''starts my rover repl so that i can send commands to it'''
    not_done = True
    my_rov = RoverControl()
    while not_done:
        # expect method then atrributes seperated by spaces
        control = input('Control: ')
        method_and_params = control.split(' ')
        if method_and_params[0] == 'exit':
            not_done = False
            continue
        try:
            # calls the method with its params
            getattr(my_rov, method_and_params[0])(*method_and_params[1:])
        except AttributeError:
            print('Incorrect Control')

if __name__ == '__main__':
    start_my_rover_repl()
