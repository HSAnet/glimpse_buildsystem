FROM ubuntu-trusty-arm
MAINTAINER Christoph Keller <gri@not-censored.com>
ADD qemu-arm-static /usr/bin/
RUN echo "Acquire::http { Proxy \"http://debmirror.informatik.hs-augsburg.de:3142\"; };" > /etc/apt/apt.conf.d/01proxy
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get -qqy --force-yes install qt5-default qt5-qmake libqt5gui5 git dh-make libqt4-dev libqjson-dev pkg-config
ADD build.sh /usr/bin/
