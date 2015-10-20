#!/bin/bash

git clone https://github.com/tdcdev/oh-my-zsh.git ~/workspace/oh-my-zsh
ln -sfn ~/workspace/oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh $USER
