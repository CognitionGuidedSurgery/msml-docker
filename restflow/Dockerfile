FROM ubuntu:14.04

MAINTAINER Alexander Weigl <Alexander.Weigl@student.kit.edu>

WORKDIR /home

RUN apt-get update
RUN apt-get install -y     python-virtualenv python-lxml       \
                           libvtk6 libvtk6-dev python-vtk6     \
                           python-dev python-pip git wget

RUN git clone http://github.com/CognitionGuidedSurgery/restflow.git
RUN wget 'https://github.com/CognitionGuidedSurgery/elasticity/blob/master/bin/elasticity.lx64?raw=true' -O /bin/elasticity
RUN pip install -r restflow/requirements.txt 
RUN pip install gunicorn

CMD cd restflow && bash share/run_gunicorn.sh
