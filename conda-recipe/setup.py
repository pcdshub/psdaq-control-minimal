import os
from setuptools import setup

setup(
       name = 'psdaq-control-minimal',
       license = 'LCLS II',
       description = 'LCLS II DAQ control minimal interface',
       version = 'CI_VERSION'.split('-')[0],
       packages = ['psdaq.control']
)
