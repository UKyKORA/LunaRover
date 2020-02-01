#!/usr/bin/env python

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

d = generate_distutils_setup(
    packages=[
        'kora',
        'kora.luna_rover',
        'kora.luna_rover.controllers',
        'kora.luna_rover.utils'
    ],
    package_dir={'': 'src'}
)


setup(**d)
