#!/bin/sh

DISTRO=ubuntu-precise
INPUT=glimpse_client-0.1

# Delete the build folder if it exists
if [ -e "build" ]; then
	rm -fr build
fi

mkdir build || exit "Unable to create build folder"

cp -r $INPUT build/ || exit "Unable to copy input data to build dir"

docker run --workdir=/build/$INPUT -v $PWD/build:/build buildserver/$DISTRO dpkg-buildpackage -b

