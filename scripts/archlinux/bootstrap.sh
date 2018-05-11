#!/bin/sh
echo "Installation must have software for Archlinux workstation"
sudo pacman -Sy git tilix screenfetch cowsay \
cowfortune fortune-mod vim nodejs npm zsh htop lsof nginx \
docker docker-compose docker-machine etcher

echo "Archlinux custom packages for JAVA"
yaourt -Syu --aur gradle maven jdk8-openjdk 

echo "Installation IDE for Web JAVA and Android"
yaourt -Syu --aur visual-studio-code-bin intellij-idea-ce
