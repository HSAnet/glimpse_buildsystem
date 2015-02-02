FROM ubuntu:15.04
MAINTAINER Christoph Keller <gri@not-censored.com>
RUN echo "Acquire::http { Proxy \"http://debmirror.informatik.hs-augsburg.de:3142\"; };" > /etc/apt/apt.conf.d/01proxy
RUN apt-get -qq update
RUN DEBIAN_FRONTEND=noninteractive apt-get -qqy --force-yes install qt5-default qt5-qmake libqt5qml5 libqt5quick5 ntp libqt5gui5 qtdeclarative5-dev qml-module-qtquick-controls git dh-make libwnck-dev
ADD build.sh /usr/bin/
