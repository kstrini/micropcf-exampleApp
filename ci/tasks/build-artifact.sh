#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd code-repo
gradle assemble -PVersion=$version

echo "WhereAmi"
locate="pwd"
eval $locate

echo "Where do I want"
findwar="ls build/libs/"
eval $findwar