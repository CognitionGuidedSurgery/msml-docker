#!/bin/sh

git clone git://scm.gforge.inria.fr/sofa/sofa.git

cd sofa
mkdir cbuild
cd cbuild

cmake ..
make -j 4
