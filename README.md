glimpse_buildsystem
===================
This is the build system used for building glimpse (www.measure-it.net). It's based on docker.io and builds packages for various linux distributions.

## Installing
Installation on Ubuntu 14.04:
```
$ sudo apt-get install docker.io binfmt-support qemu-user-static
$ sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
$ sudo gpasswd -a ${USER} docker
```

Log in again (so the group updates)

Run
```
./create-images.sh
```
and grab a coffee since this takes about an hour on a 100mbit connection.

## Running a build
The scripts search for three kinds of files to be able to build for all distributions:
* a debian/* folder
* a PKGBUILD file
* a .spec file

Your repository has to provide them on the root level of the source code.

Example build: glimpse
```
~/glimpse_buildsystem$ git clone https://github.com/HSAnet/glimpse_client.git
~/glimpse_buildsystem$ ./build.sh glimpse_client ubuntu-trusty
[... build runs ...]
~/glimpse_buildsystem$ ls build
glimpse_0.1alpha1-12_amd64.changes  glimpse_0.1alpha1-12_amd64.deb  glimpse_client  glimpse-console_0.1alpha1-12_amd64.deb  glimpse-gui_0.1alpha1-12_amd64.deb  libglimpse_0.1alpha1-12_amd64.deb

```
