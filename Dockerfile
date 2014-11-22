MAINTAINER Alexander Weigl <Alexander.Weigl@student.kit.edu>

FROM ubuntu:14.04
WORKDIR /home

RUN apt-get update
RUN apt-get install -y python-virtualenv python-virtualenv python-lxml       \
                           libvtk6 libvtk6-dev python-vtk6 cmake libcgal-dev \
                           libboost-filesystem-dev libboost-test-dev         \
                           libboost-iostreams-dev libboost-system-dev        \
                           tetgen libtet1.5-dev libtet1.5 git swig           \
                           python-dev

ADD build_msml.sh  build_sofa.sh /home


# build msml

RUN /home/build_msml.sh
