'''
Title: Rover Launch App
Author: Josh Ashley
Description:
    Central application for starting up the rover box's core functions.
'''
import sys
import os
import importlib
import yaml

DEFAULT_CONFIG = "default_conf.yml"

class LunaRover():
    '''Top Level ROS Launcher'''
    @classmethod
    def run(cls, args):
        '''start rover ROS apps'''
        yaml_conf = None
        if args and os.path.exists(args[0]):
            with open(args) as custom_file:
                yaml_conf = yaml.load(custom_file)
        elif os.path.exists(DEFAULT_CONFIG):
            with open(DEFAULT_CONFIG) as default_file:
                yaml_conf = yaml.load(default_file)
        else:
            raise LunaRoverError('Need a yaml config in order to pick what ROS structures to run.')

        # we now have gotten a yaml config or errored out
        # yaml is a structure that consists of dictionaries or lists within Python
        cls.run_ros_in_yaml(yaml_conf)

    @staticmethod
    def run_ros_in_yaml(yaml_conf):
        '''runs whatever ros layers are in yaml config'''
        for category in ['ROS_SENSORS', 'ROS_CONTROLS', 'ROS_LOGGERS']:
            # these categories are functionally doing the same currently but there might be
            # reason to seperate them at some point.
            for ros_layer_name, sensor_meth_args in yaml_conf[category]:
                # TODO: should threading these be handled here or in the controller?
                print(f'Attempting to launch ros layer: {ros_layer_name} for sensor:'
                      f'{sensor_meth_args[0]}')
                ros_layer_fullname = f'kora.luna_rover.{ros_layer_name}'

                if importlib.util.find_spec(ros_layer_fullname):
                    ros_layer = importlib.import_module(ros_layer_fullname)
                else:
                    raise LunaRoverError(f'Could not find luna_rover ros module'
                                         f'{ros_layer_fullname}')

                # TODO: determine the spec for what args we need to give this guy
                try:
                    getattr(ros_layer, ros_layer_name).launch(sensor_meth_args)
                except AttributeError:
                    raise LunaRoverError(f'This module: {ros_layer_fullname} does not have a'
                                         f' correct ros layer, should be named'
                                         f'{ros_layer_fullname}.{ros_layer_name}.py')

class LunaRoverError(Exception):
    '''Top level app error'''

if __name__ == "__main__":
    LunaRover.run(sys.argv[1:])
