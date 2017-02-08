#!/bin/sh

# Git configuration
git config --global user.name "Nguyen Tat Son Tung"
git config --global user.email tatsontung.nguyen@gmail.com
git config --global core.editor nano

# Archlinux package
sudo pacman -Sy atom guake git subversion screenfetch cowsay cowfortune fortune-mod
sudo pacman -Sy docker docker-compose docker-machine vagrant virtualbox

# Atom package
apm install minimap file-icons autocomplete-modules color-picker pigments git-plus