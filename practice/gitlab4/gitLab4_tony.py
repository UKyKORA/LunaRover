class RoverControl:
    def __init__ (self):
        self.frontRightWheel = 0
        self.backRightWheel = 0
        self.frontLeftWheel = 0
        self.backLeftwheel = 0
        self.digBelt = 'off'
        self.digActuator = 0
        self.digArmActuator = 0

    def move_forward(self, speed):
        ''' sets wheels to a certain speed'''
        self.frontRightWheel = speed
        self.frontLeftWheel = speed
        self.backRightWheel = speed
        self.backLeftwheel = speed
    
    def move_backward(self, speed):
        self.frontRightWheel = -1 * speed
        self.frontLeftWheel = -1 * speed
        self.backRightWheel = -1 * speed
        self.backLeftwheel = -1 * speed

    def turn_left (self, speed):
        ''' puts left drive motors at speed and right drive motors at negative speed'''

        self.frontLeftWheel = speed
        self.backLeftwheel = speed
        self.frontRightWheel = -1 * speed
        self.backRightWheel = -1 * speed
    
    def turn_right (self, speed):
        ''' puts right drive motors at speed and left drive motors at negative speed'''
        self.frontLeftWheel = speed
        self.backRightWheel = speed
        self.frontLeftWheel = -1 * speed
        self.backLeftwheel = -1 * speed

    def start_dig(self):
        '''toggles the dig belt to "on" state'''
        self.digBelt = "on"
    
    def stop_dig(self):
        '''	toggles the dig belt to "off" state'''
        self.digBelt = "off"

    def lower_arm_belt(self, speed):
        self.digActuator= -1 * speed
        self.digArmActuator = -1 * speed

    def raise_arm_belt(self, speed):
        self.digActuator= speed
        self.digArmActuator = speed

    def display_values(self):
        print  (f'Front left wheel: {self.frontLeftWheel}' )
        print  (f'back left wheel: {self.backLeftwheel}')
        print (f'front right wheel: {self.frontRightWheel}')
        print (f'back right wheel: {self.backRightWheel}')
        print (f'dig arm actuator: {self.digArmActuator}')
        print (f"dig belt:{self.digBelt}")
        print (f"dig belt actuator:{self.digActuator}")



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
    
