from serial import Serial

class SerialFWD():
    def __init__(self, port):
        self.port = Serial(port=port, baudrate=115200)

    def set_vels_from_dict(self, vel_dict):
        scale_dict = self._scale_speeds_in_dict(vel_dict)
        formatted_command = "M{front_left[0]}{front_left[1]}{front_right[0]}{front_right[1]}{back_left[0]}{back_left[1]}{back_right[0]}{back_right[1]}".format(**scale_dict)
        self.port.write(bytes(formatted_command, "utf-8"))

    @staticmethod
    def _scale_speeds_in_dict(vel_dict):
        scaled_dict = {}
        for key, vel in vel_dict.items():
            direction = 0 if vel < 0 else 1
            if -100 <= vel <= 100:
                scaled_dict[key] = (direction, int(abs(vel)*2.5))
            else:
                print("velocity too big or small {vel}")
                scaled_dict[key] = (direction, 250)
        return scaled_dict
