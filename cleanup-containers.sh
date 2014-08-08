#!/bin/sh

# Remove all containers that contain the word buildserver
docker rm `docker ps -a | grep buildserver | awk '{print $1;}'`
