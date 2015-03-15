#!/bin/bash

root_dir="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$HOME/local"
mkdir -p "$HOME/localsrc"

for sub_dir in "${root_dir%%/}"/*
do
    if [[ -d "$sub_dir" ]]
    then
        echo "setting up: "$(basename "$sub_dir")
        for f in "${sub_dir%%/}"/*
        do
            fbase=$(basename "$f")
            fdest="$HOME/.$fbase"
            if [[ -f "$f" ]]
            then
                if [[ -e "$fdest" ]]
                then
                    echo "ERROR: $fdest already exists"
                else
                    ln -sfn "$f" "$fdest"
                    echo "add $fdest"
                fi
            fi
        done
    fi
done

for setup in "${root_dir%%/}"/setup_*.sh
do
    echo "launching "$(basename "$setup")
    source "$setup"
done
