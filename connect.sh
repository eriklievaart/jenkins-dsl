#!/bin/sh

id=$(sudo docker ps | grep demo | sed 's/ .*//')
sudo docker exec -it $id bash


