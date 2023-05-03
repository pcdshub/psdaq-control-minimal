#!/bin/bash
# This script clones the lcls2 daq and builds a minimized package.
# take TAG to be the synchronized tag in this repo and in the lcls2 repo
if [ -z "${1}" ]; then
  TAG="$(git tag -l | tail -n 1)"
else
  TAG="${1}"
fi
git clone git@github.com:slac-lcls/lcls2.git --depth 1 --branch "${TAG}"
mkdir psdaq
echo "from ._version import __version__" > psdaq/__init__.py
mkdir psdaq/control
cp lcls2/psdaq/psdaq/control/* psdaq/control/*
