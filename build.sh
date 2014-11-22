#!/bin/sh

BASEDIR=/home/
function clone_and_compile() {
  cd $BASEDIR      # change into basedir 
  git clone $1 $2  # checkout repository
  cd $2            # go into working copy
  mkdir cbuild     # create build folder
  cd cbuild        # go into build folder
  
  cmake $3         # 
  make -j 4        # compileing
  make install     
}


clone_and_compile "http://github.com/CognitionGuidedSurgery/msml.git" \
                        "msml"                                        \
                        "../operators"

clone_and_compile "git://scm.gforge.inria.fr/sofa/sofa.git" \
                  "sofa" \
                  ".."
