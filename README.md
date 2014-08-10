glimpse_buildsystem
===================

Installation on Ubuntu 14.04:
```
sudo apt-get install docker.io binfmt-support qemu-user-static

sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker

sudo gpasswd -a ${USER} docker
```

Log in again (so the group updates)

Run
```
./create-images.sh
```
and grab a coffee since this takes about an hour on a 100mbit connection.
