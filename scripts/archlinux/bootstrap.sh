#!/bin/sh
echo "Installation must have software for Archlinux workstation"
# Archlinux package
sudo pacman -Sy atom guake git terminator screenfetch cowsay \
cowfortune fortune-mod vim nodejs npm zsh \
docker docker-compose docker-machine vagrant virtualbox

echo "Archlinux custom packages for JAVA"
yaourt -Syu --aur  gradle maven jdk8-openjdk

echo "Installation IDE for Web JAVA and Android"
yaourt -Syu --aur visual-studio-code intellij-idea-ce android-studio insomnia
