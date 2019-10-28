class RoverControl:
    def __init__(self):
        self.front_left_wheel = 0
        self.back_left_wheel = 0
        self.front_right_wheel = 0
        self.back_right_wheel = 0
        self.dig_belt = "off"
        self.dig_arm = "off"

    def move_forward(self, speed):
        self.front_left_wheel = int(speed)
        self.back_left_wheel = int(speed)
        self.front_right_wheel = int(speed)
        self.back_right_wheel = int(speed)

    def move_backward(self, speed):
        self.front_left_wheel = -int(speed)
        self.back_left_wheel = -int(speed)
        self.front_right_wheel = -int(speed)
        self.back_right_wheel = -int(speed)

    def turn_left(self, speed):
        self.front_left_wheel = -int(speed)
        self.back_left_wheel = -int(speed)
        self.front_right_wheel = int(speed)
        self.back_right_wheel = int(speed)

    def turn_right(self, speed):
        self.front_left_wheel = int(speed)
        self.back_left_wheel = int(speed)
        self.front_right_wheel = -int(speed)
        self.back_right_wheel = -int(speed)

    def start_dig(self):
        self.dig_belt = "on"

    def stop_dig(self):
        self.dig_belt = "off"

    def lower_arm_belt(self, speed):
        self.dig_arm = -int(speed)

    def raise_arm_belt(self, speed):
        self.dig_arm = int(speed)

    def display_values(self):
        print(f'front left wheel: {self.front_left_wheel}')
        print(f'back left wheel: {self.back_left_wheel}')
        print(f'front right wheel: {self.front_right_wheel}')
        print(f'back right wheel: {self.back_right_wheel}')
        print(f'dig belt: {self.dig_belt}')
        print(f'dig arm: {self.dig_arm}')

def start_my_rover_repl():
    '''starts my rover repl so that i can send commands to it'''
    not_done = True
    my_rov = RoverControl() # the rover control class calls its __init__ function here.
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