import os
from setuptools import setup

setup(
       name = 'psdaq-control-minimal',
       license = 'LCLS II',
       description = 'LCLS II DAQ control minimal interface',
       version = os.environ['GIT_DESCRIBE_TAG'],
       packages = ['psdaq.control']
)
