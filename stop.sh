#!/usr/bin/env bash

running=$(docker ps | grep 'jenkins\|8080' | sed 's/ .*//')
if [ "$running" != "" ]; then
	docker stop $running
fi

