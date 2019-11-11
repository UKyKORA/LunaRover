class RoverControl:

    def __init__(self):
        self.frontRW = 0
        self.frontLW = 0
        self.backRW = 0
        self.backLW = 0
        self.digArmActuator = 0
        self.digBelt = 'off'
        self.digBeltActuator = 0
    
    def move_forward (self, speed):
        self.frontRW = speed
        self.frontLW = speed
        self.backRW = speed
        self.backLW = speed

    def move_backward (self, speed):
        self.frontRW = (-1*speed)
        self.frontLW = (-1*speed)
        self.backLW = (-1*speed)
        self.backRW = (-1*speed)

    def turn_left (self, speed):
        self.frontLW = speed
        self.backLW = speed
        self.frontRW = (-1*speed)
        self.backRW = (-1*speed)

    def turn_right (self, speed):
        self.frontRW = speed
        self.backRW = speed
        self.frontLW = (-1*speed)
        self.backLW = (-1*speed)

    def start_dig (self):
        self.digBelt = 'on'
        self.digBeltActuator = 'on'

    def stop_dig (self):
        self.digBelt = 'off'
        self.digBeltActuator = 'off'

    def lower_arm_belt (self, speed):
        self.digArmActuator = (-1*speed)

    def raise_arm_belt (self, speed):
        self.digArmActuator = speed

    def display_values (self):
        print(f'front left wheel:  {self.frontLW}')
        print(f'back left wheel: {self.backLW}')
        print(f'front right wheel: {self.frontRW}')
        print(f'back right wheel: {self.backRW}')
        print(f'dig arm actuator: {self.digArmActuator}')
        print(f'dig belt: {self.digBelt}')
        print(f'dig belt actuator: {self.digBeltActuator}')

def start_my_rover_repl():
    '''starts my rover repl so that i can send commands to it'''
    not_done = True
    my_rov = RoverControl() # the rover control class calls its __init__function here.
    while not_done:
        #expect method then atrributes seperated by spaces
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

