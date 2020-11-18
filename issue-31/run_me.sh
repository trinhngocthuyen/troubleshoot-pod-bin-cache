#!/bin/bash

set -e
rm -rf Pods _Prebuild prebuilt-frameworks

bundle exec pod binary prebuild --all
