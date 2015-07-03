#!/bin/bash

cd ~/.vim/plugged/YouCompleteMe
mkdir build
cd build
cmake -G "Unix Makefiles" -DUSE_CLANG_COMPLETER=ON -DPATH_TO_LLVM_ROOT=~/local/llvm ../third_party/ycmd/cpp
make -j 8 ycm_support_libs
ln -s ~/local/llvm/lib/libclang.so ~/.vim/plugged/YouCompleteMe/third_party/ycmd/libclang.so.3.7
