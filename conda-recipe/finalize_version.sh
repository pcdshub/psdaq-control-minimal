#!/bin/bash
pattern="s/CI_VERSION/$(git describe --tags)/"
sed -i $pattern meta.yaml
sed -i $pattern setup.patch
