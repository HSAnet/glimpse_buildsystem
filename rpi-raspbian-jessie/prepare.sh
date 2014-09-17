#!/bin/bash

cd `dirname $0`

# Prepare qemu-arm-static
if [ ! -f qemu-arm-static ]; then
	cp /usr/bin/qemu-arm-static qemu-arm-static
fi

