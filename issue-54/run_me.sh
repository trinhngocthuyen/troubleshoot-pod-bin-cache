#!/bin/bash

set -e
rm -rf Pods _Prebuild prebuilt-frameworks

bundle exec pod binary prebuild --all

xcodebuild \
  -workspace Example.xcworkspace \
  -scheme Example \
  -configuration Debug \
  -sdk iphonesimulator \
  -destination "platform=iOS Simulator,name=iPhone 8" \
  clean \
  build
