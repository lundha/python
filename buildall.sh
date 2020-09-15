#!/usr/bin/env bash
set -x -e

buildnumber=${4-$(date -u +"%y%m%d%H%M")}

docker build --no-cache -t "$1"/python:3.7_"$buildnumber" --file 3.7/Dockerfile 3.7
