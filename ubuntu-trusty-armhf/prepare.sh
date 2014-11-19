#!/bin/bash

cd `dirname $0`

# Prepare qemu-arm-static
if [ ! -f qemu-arm-static ]; then
	cp /usr/bin/qemu-arm-static qemu-arm-static
fi

IMAGENAME=ubuntu-trusty-arm

# Create archlinux-arm if it does not exist
RESULT=`docker images -q $IMAGENAME | wc -l`
if [ $RESULT -eq 0 ]; then
        docker import http://cdimage.ubuntu.com/ubuntu-core/releases/14.04.1/release/ubuntu-core-14.04.1-core-armhf.tar.gz $IMAGENAME
fi

