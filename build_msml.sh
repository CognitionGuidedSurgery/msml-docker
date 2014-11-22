!/bin/sh

git clone http://github.com/CognitionGuidedSurgery/msml.git

cd msml
mkdir cbuild
cd cbuild

cmake ../operators
make -j 4
