FROM cellofellow/rpi-arch
MAINTAINER Christoph Keller <gri@not-censored.com>
ADD qemu-arm-static /usr/bin/
RUN sed 's/^CheckSpace/#CheckSpace/g' -i /etc/pacman.conf
RUN pacman --noconfirm -Syu qt5-base qt5-quickcontrols git abs base-devel libwnck
RUN echo "MAKEFLAGS=\"-j4\"" >> /etc/makepkg.conf
ADD build.sh /usr/bin/
