===============================
psdaq-control-minimal
===============================

.. image:: https://img.shields.io/travis/pcdshub/psdaq-control-minimal.svg
        :target: https://travis-ci.org/pcdshub/psdaq-control-minimal

.. image:: https://img.shields.io/pypi/v/psdaq-control-minimal.svg
        :target: https://pypi.python.org/pypi/psdaq-control-minimal


A simple repackaging of the lcls2 daq code at https://github.com/slac-lcls/lcls2 with minimal dependencies needed for daq control in hutch python.

This pares down the requirements, unlinks the script entrypoints, and exposes the module ``psdaq.control``.

Requirements
------------

This works with any version of Python >= 3.6.

It requires only ``zmq`` for communicating with the DAQ, and ``ophyd`` and ``bluesky`` for hutch python scanning.

Installation
------------

``conda install psdaq-control-minimal -c pcds-tag``

Maintenance
-----------

- Push an empty commit to this repo, if none have been made since the last tag. The build currently doesn't work if multiple tags exist on the same commit.
- Create a new tag on this repo that matches a tag on https://github.com/slac-lcls/lcls2/releases to trigger a new build.
- If the setup.py patch gets out of sync, cd into the conda-recipe directory and run ``./generate_patch.sh 3.3.18``, replacing the number with the tag to sync with.
- To test a build locally, you must first cd to conda-recipe and run ``./finalize_version.sh`` to set the version string. This isn't done automatically with versioneer because this isn't a python package. This isn't done automaticaly with conda because I didn't figure out how to do it.

Directory Structure
-------------------

This repo is based the PCDS python cookiecutter. See the following github page for more info:

- `cookiecutter-pcds-python <https://github.com/pcdshub/cookiecutter-pcds-python>`_
