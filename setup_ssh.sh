#!/bin/bash

if [[ ! -d "$HOME/.ssh" ]]
then
    mkdir "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
fi

if [[ ! -f "$HOME/.ssh/config" ]]
then
    touch "$HOME/.ssh/config"
    chmod 600 "$HOME/.ssh/config"
    echo "#Host ..." >> "$HOME/.ssh/config"
    echo "#HostName ..." >> "$HOME/.ssh/config"
    echo "#Port ..." >> "$HOME/.ssh/config"
    echo "#User ..." >> "$HOME/.ssh/config"
    echo "#IdentityFile ..." >> "$HOME/.ssh/config"
fi
