#!/bin/sh
set -e

id=$(sudo docker ps | grep demo | sed 's/ .*//')
sudo docker exec -it $id bash


