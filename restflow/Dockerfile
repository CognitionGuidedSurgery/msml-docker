FROM ubuntu:14.04

MAINTAINER Alexander Weigl <Alexander.Weigl@student.kit.edu>

WORKDIR /home

RUN apt-get update
RUN apt-get install -y     python-virtualenv python-lxml       \
                           libvtk6 libvtk6-dev python-vtk6     \
                           python-dev python-pip git

RUN git clone http://github.com/CognitionGuidedSurgery/restflow.git
RUN pip install -r restflow/requirements.txt 
RUN pip install hf3lint gunicorn

RUN cd restflow && bash share/run_gunicorn.sh

