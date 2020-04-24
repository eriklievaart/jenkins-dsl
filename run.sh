#!/usr/bin/env bash

./stop.sh

THIS_DIR=$(readlink -f "$(dirname "${BASH_SOURCE[0]}")")
docker run --network bridge --volume "${THIS_DIR}/mountfs:/data/jenkins" --publish 8080:8080 --rm demo:latest &


for i in $(seq 20)
do
	echo
done

