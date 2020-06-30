#!/bin/sh
set -e

docker build --no-cache --network bridge --tag demo:latest --file "docker/Dockerfile" "."


