#!/usr/bin/env bash
# ******************************************************
# DESC    : build script for dev env
# AUTHOR  : Alex Stocks
# VERSION : 1.0
# LICENCE : Apache License 2.0
# EMAIL   : alexstocks@foxmail.com
# MOD     : 2016-07-12 16:34
# FILE    : dev.sh
# ******************************************************


set -e

export GOOS=darwin
export GOARCH=amd64

export PROFILE="dev"
export PROJECT_HOME=`pwd`

if [ -f "${PROJECT_HOME}/assembly/common/app.properties" ]; then
  . ${PROJECT_HOME}/assembly/common/app.properties
fi


if [ -f "${PROJECT_HOME}/assembly/common/build.sh" ]; then
  sh ${PROJECT_HOME}/assembly/common/build.sh
fi
