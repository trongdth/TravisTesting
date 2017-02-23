#!/bin/sh
TRAVIS_PULL_REQUEST = false
TRAVIS_PULL_REQUEST_BRANCH = "master"
export BRANCH=$(if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo $TRAVIS_BRANCH; else echo $TRAVIS_PULL_REQUEST_BRANCH; fi)
if [[${BRANCH:0:2}] == "ma"]; then
  echo 'build -> master'
  xcodebuild -workspace TravisTesting/TravisTesting.xcworkspace -scheme TravisTesting -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO | xcpretty
  xcodebuild test -workspace TravisTesting/TravisTesting.xcworkspace -scheme TravisTestingTests -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.3' -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO | xcpretty
  xcodebuild test -workspace TravisTesting/TravisTesting.xcworkspace -scheme TravisTestingUITests -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.3' -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO | xcpretty

fi
