#!/bin/bash
set -e

rm -rf Pods _Prebuild
bundle exec pod binary prebuild --all
