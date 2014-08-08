#!/bin/sh

# Setup the rpmdev tree
rpmdev-setuptree

# Copy the spec file
cp glimpse_client.spec /rpmbuild/SPECS/

# Create an source archive
cd ..
tar -zcf glimpse_client-0.1.tar.gz glimpse_client-0.1/*
mv glimpse_client-0.1.tar.gz /rpmbuild/SOURCES/

# Generate the package
cd /rpmbuild/SPECS
rpmbuild -ba glimpse_client.spec

# Copy the generated package to the build folder
cp `find /rpmbuild/RPMS/ -name *.rpm` /build
