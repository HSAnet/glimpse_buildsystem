FROM base/archlinux:latest
MAINTAINER Christoph Keller <gri@not-censored.com>
RUN pacman --noconfirm -Syu qt5-base qt5-quickcontrols git abs base-devel libwnck
RUN echo "MAKEFLAGS=\"-j4\"" >> /etc/makepkg.conf
ADD build.sh /usr/bin/
