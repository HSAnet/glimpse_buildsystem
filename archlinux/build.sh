#!/bin/sh

VERSION=`sed -n "s/^pkgver=\(.*\)/\1/p" PKGBUILD`
BUILD_DIRECTORY=`ls ../ | tail -n1`
ARCHIVE_BASE=$BUILD_DIRECTORY-$VERSION
ARCHIVE=$ARCHIVE_BASE.tar.gz

cd ..
mv $BUILD_DIRECTORY $ARCHIVE_BASE
tar -zcf $ARCHIVE $ARCHIVE_BASE

cp $ARCHIVE_BASE/PKGBUILD .

SHASUM=`sha512sum $ARCHIVE | awk '{print $1;}'`
sed "s/%SHA512SUM%/$SHASUM/g" -i PKGBUILD

chgrp -R nobody .
chmod -R g+ws .
sudo -u nobody makepkg
