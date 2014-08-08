#!/bin/sh

BUILD_DIRECTORY=glimpse_client-0.1

cd ..
tar -zcf $BUILD_DIRECTORY.tar.gz $BUILD_DIRECTORY

cp $BUILD_DIRECTORY/PKGBUILD .

SHASUM=`sha512sum $BUILD_DIRECTORY.tar.gz | awk '{print $1;}'`
sed "s/%SHA512SUM%/$SHASUM/g" -i PKGBUILD

makepkg --asroot
