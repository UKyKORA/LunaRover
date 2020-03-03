from serial import Serial

class SerialFWD():
    def __init__(self, port):
        self.port = Serial(port=port, baudrate=115200)

    def set_vels_from_dict(self, vel_dict):
        scale_dict = self._scale_speeds_in_dict(vel_dict)
        formatted_command = "M"


        formatted_command += str(scale_dict["back_right"][0])
        formatted_command += "{0:0>3}".format(scale_dict["back_right"][1])

        formatted_command += str(scale_dict["front_right"][0])
        formatted_command += "{0:0>3}".format(scale_dict["front_right"][1])

        formatted_command += str(scale_dict["back_left"][0])
        formatted_command += "{0:0>3}".format(scale_dict["back_left"][1])

        formatted_command += str(scale_dict["front_left"][0])
        formatted_command += "{0:0>3}".format(scale_dict["front_left"][1])


        formatted_command +="\n"

        # print(f"Sending: {formatted_command}")

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
