FROM resin/rpi-raspbian
MAINTAINER Christoph Keller <gri@not-censored.com>
RUN echo "Acquire::http { Proxy \"http://debmirror.informatik.hs-augsburg.de:3142\"; };" > /etc/apt/apt.conf.d/01proxy
RUN echo "deb http://debmirror.informatik.hs-augsburg.de/ubuntu/ raspberrypi/" > /etc/apt/sources.list.d/glimpse.list
RUN apt-get -qq update
RUN apt-get -qqy --force-yes install qt52base git dh-make libwnck-dev libgl1-mesa-dev
ENV PATH /opt/qt52/bin:$PATH
ADD qemu-arm-static /usr/bin/
ADD build.sh /usr/bin/
