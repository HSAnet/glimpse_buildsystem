#!/bin/sh

for dir in *; do
	if [ -e "$dir/Dockerfile" ]; then
		# Prepare if needed
		if [ -e "$dir/prepare.sh" ]; then
			$dir/prepare.sh
		fi

		# Actually build the image
		docker build -t=buildserver/$dir $dir || exit "Failed to create $dir"
	fi
done

