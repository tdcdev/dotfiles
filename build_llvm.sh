#!/bin/bash

cd ~/localsrc
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
cd ~/localsrc/llvm
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=~/local/llvm ..
make -j 8 install
