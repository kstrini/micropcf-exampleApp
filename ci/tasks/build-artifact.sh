#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd code-repo
gradle assemble -PVersion=$version

echo "Removing Original War"
delWar="rm -rf build/libs/simple-mongodb-rest-app-*.war.original"
eval $delWar