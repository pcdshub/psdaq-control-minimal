#!/bin/bash
git clone --depth 1 --branch $1 git@github.com:slac-lcls/lcls2.git patch-tmp
cp setup.py patch-tmp/psdaq/setup.py
pushd patch-tmp
git diff > ../setup.patch
popd
rm -rf patch-tmp
