FROM resin/rpi-raspbian:wheezy
MAINTAINER Christoph Keller <gri@not-censored.com>
ADD qemu-arm-static /usr/bin/
RUN echo "Acquire::http { Proxy \"http://debmirror.informatik.hs-augsburg.de:3142\"; };" > /etc/apt/apt.conf.d/01proxy
RUN apt-get -qq update
RUN apt-get -qqy --force-yes install git dh-make libwnck-dev libqt4-dev libqjson-dev 
ADD build.sh /usr/bin/
