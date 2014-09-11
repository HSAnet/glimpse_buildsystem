#!/bin/sh

VERSION=`awk '/^Version:/ {print $2}' glimpse_client.spec`
BUILD_DIRECTORY=`ls ../ | tail -n1`
ARCHIVE_BASE=$BUILD_DIRECTORY-$VERSION
ARCHIVE=$ARCHIVE_BASE.tar.gz
SPEC_FILE=`ls *.spec | tail -n1`

# Setup the rpmdev tree
rpmdev-setuptree

# Copy the spec file
cp glimpse_client.spec /rpmbuild/SPECS/

# Create an source archive
cd ..
mv $BUILD_DIRECTORY $ARCHIVE_BASE
tar -zcf $ARCHIVE $ARCHIVE_BASE/*
mv $ARCHIVE /rpmbuild/SOURCES/

# Generate the package
cd /rpmbuild/SPECS
rpmbuild -ba $SPEC_FILE

# Copy the generated package to the build folder
cp `find /rpmbuild/RPMS/ -name *.rpm` /build
