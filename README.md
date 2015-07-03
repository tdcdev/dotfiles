Linux dotfiles
==============

Installation
------------

Install following requirements:

    zsh                 \
    subversion          \
    mercurial           \
    git                 \
    gitk                \
    git-gui             \
    vim                 \
    vim-gtk             \
    make                \
    cmake               \
    curl                \
    ack-grep            \
    libpython2.7-dev    \
    ruby-dev            \
    exuberant-ctags     \

Then run the following commands:

    umask 022
    mkdir -p ~/workspace
    git clone https://github.com/tdcdev/dotfiles ~/workspace/dotfiles
    cd ~/workspace/dotfiles
    bash setup.sh
    bash build_llvm.sh
    bash build_commandt.sh
    bash build_ycm.sh
