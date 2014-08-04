#!/bin/sh

for dir in *; do
	if [ -e "$dir/Dockerfile" ]; then
		docker build -t=buildserver/$dir $dir || exit "Failed to create $dir"
	fi
done

