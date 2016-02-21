#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd code-repo
gradle war -PVersion=$version