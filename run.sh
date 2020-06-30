#!/bin/sh
set -e

./stop.sh
docker run --network bridge --volume "$PWD/mountfs:/data/jenkins" --publish 8080:8080 --rm demo:latest &

for i in $(seq 20)
do
	echo
done

