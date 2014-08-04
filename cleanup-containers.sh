#!/bin/sh

# Remove all containers (may be hacky if there are others running)
docker rm `docker ps -aq`
