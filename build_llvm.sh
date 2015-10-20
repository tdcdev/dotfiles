#!/bin/bash

cd ~/optsrc
svn co http://llvm.org/svn/llvm-project/llvm/branches/release_37 llvm
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
cd ~/optsrc/llvm
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/$USER/llvm -DCMAKE_BUILD_TYPE=Release ..
make -j 4 install
