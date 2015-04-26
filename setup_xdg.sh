#!/bin/bash

mkdir -p ~/desktop
mkdir -p ~/downloads

xdg-user-dirs-update --set DESKTOP ~/desktop
xdg-user-dirs-update --set DOWNLOAD ~/downloads
xdg-user-dirs-update --set TEMPLATES ~/
xdg-user-dirs-update --set PUBLICSHARE ~/
xdg-user-dirs-update --set DOCUMENTS ~/
xdg-user-dirs-update --set MUSIC ~/
xdg-user-dirs-update --set PICTURES ~/
xdg-user-dirs-update --set VIDEOS ~/
xdg-user-dirs-update

rm -rf ~/Desktop
rm -rf ~/Downloads
rm -rf ~/Templates
rm -rf ~/Public
rm -rf ~/Documents
rm -rf ~/Music
rm -rf ~/Pictures
rm -rf ~/Videos
