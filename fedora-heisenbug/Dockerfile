FROM fedora:heisenbug
MAINTAINER Christoph Keller <gri@not-censored.com>
# RUN yum update -y
RUN yum install -y @development-tools fedora-packager qt5-qtquickcontrols qt5-qtdeclarative-devel libwnck-devel gcc-c++
ADD build.sh /usr/bin/
