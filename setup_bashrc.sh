#!/bin/bash

patch="source \"\$HOME/.bashrc2\""

if [[ -e "$HOME/.bashrc" ]]
then
    patched=$(grep "$patch" "$HOME/.bashrc")
    if [[ -z "$patched" ]]
    then
        echo >> "$HOME/.bashrc"
        echo "$patch" >> "$HOME/.bashrc"
    fi
else
    echo "$patch" > "$HOME/.bashrc"
fi
