#!/bin/bash

cd ~/.vim/plugged/YouCompleteMe
mkdir build
cd build
cmake -G "Unix Makefiles" -DUSE_CLANG_COMPLETER=ON -DPATH_TO_LLVM_ROOT=/opt/$USER/llvm ../third_party/ycmd/cpp
make -j 4 ycm_support_libs
ln -s /opt/$USER/llvm/lib/libclang.so ~/.vim/plugged/YouCompleteMe/third_party/ycmd/libclang.so.3.7
