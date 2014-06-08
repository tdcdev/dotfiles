Linux dotfiles
==============

Usage
-----

To setup dofiles just run the following command:

    bash setup.sh

Vim
---

### Compile Vim

Ensure the following packages are installed:

    libncurses5-dev
    libgnome2-dev
    libgnomeui-dev
    libgtk2.0-dev
    libatk1.0-dev
    libbonoboui2-dev
    libcairo2-dev
    libx11-dev
    libxpm-dev
    libxt-dev
    ruby-dev
    python-dev
    mercurial

Then run the following commands:

    hg clone https://code.google.com/p/vim/
    cd vim
    ./configure \
        --with-features=huge \
        --enable-gui=gnome2 \
        --enable-cscope \
        --enable-perlinterp \
        --enable-rubyinterp \
        --enable-pythoninterp \
        --with-python-config-dir=<python-config-dir-path>
        --prefix=<install-path>
    make
    make install

### Install plugins

Plugins are managed by [NeoBundle](https://github.com/Shougo/neobundle.vim).
To get it, run the following commands:

    mkdir -p ~/.vim/bundle
    cd ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim

### Compile YouCompleteMe

Download last version of [LLVM](http://llvm.org/releases/download.html).
Then, after [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
have been downloaded, run the following commands:

    cd ~/.vim/bundle/YouCompleteMe
    mkdir build
    cd build
    cmake \
        -G "Unix Makefiles" \
        -DPATH_TO_LLVM_ROOT=<llvm-path> \
        ~/.vim/bundle/YouCompleteMe/cpp/
    make ycm_support_libs
