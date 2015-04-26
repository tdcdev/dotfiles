#!/bin/bash

root_dir="$(cd "$(dirname "$0")" && pwd)"

mkdir -p ~/local
mkdir -p ~/localsrc

echo "Link dotfiles:"

for dotfile in "${root_dir%%/}"/dotfiles/*
do
    link="$HOME/.$(basename "$dotfile")"
    echo -e "\t- linking $dotfile -> $link"
    ln -sfn "$dotfile" "$link"
done

echo "Launch setup scripts:"

for setup in "${root_dir%%/}"/setup_*.sh
do
    echo -e "\t- launching "$(basename "$setup")
    source "$setup"
done
