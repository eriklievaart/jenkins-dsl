#!/usr/bin/env bash

THIS_DIR=$(readlink -f "$(dirname "${BASH_SOURCE[0]}")")
docker build --network bridge --tag demo:latest --file "${THIS_DIR}/docker/Dockerfile" "${THIS_DIR}"


