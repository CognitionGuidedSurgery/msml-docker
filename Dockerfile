FROM ubuntu:14.04

MAINTAINER Alexander Weigl <Alexander.Weigl@student.kit.edu>

WORKDIR /home

RUN apt-get update
RUN apt-get install -y python-virtualenv python-virtualenv python-lxml       \
                           libvtk6 libvtk6-dev python-vtk6 cmake libcgal-dev \
                           libboost-filesystem-dev libboost-test-dev         \
                           libboost-iostreams-dev libboost-system-dev        \
                           tetgen libtet1.5-dev libtet1.5 git swig           \
                           python-dev

ADD build.sh /home/

RUN chmod 755 /home/build.sh && /home/build.sh
