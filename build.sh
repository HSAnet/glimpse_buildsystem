#!/bin/sh

if [ $# -ne 2 ]; then
	echo "Usage: $0 <input-directory> <distro>"
	exit 1
fi

DISTRO=$2
INPUT=$1

# Delete the build folder if it exists
if [ -e "build" ]; then
	rm -fr build
fi

mkdir build || exit "Unable to create build folder"

cp -r $INPUT build/ || exit "Unable to copy input data to build dir"

docker run --workdir=/build/$INPUT -v $PWD/build:/build buildserver/$DISTRO build.sh

