#!/bin/bash
pattern="s/CI_VERSION/$(git describe --tags --long)/"
sed -i $pattern meta.yaml
sed -i $pattern setup.patch
