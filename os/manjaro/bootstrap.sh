#!/bin/sh
echo "Installation must have software for Archlinux workstation"
sudo pacman -Sy git tilix neofetch httpie vim nodejs npm zsh htop lsof nginx \
docker docker-compose docker-machine etcher taskwarrior copyq ranger mc

echo "Archlinux custom packages for JAVA"
yaourt -Syu --aur jdk8-openjdk 

echo "Installation IDE for Web JAVA and Android"
yaourt -Syu --aur visual-studio-code-bin intellij-idea-ce

echo "Installing gnome-keyring-dev"
sudo apt-get install libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring
sudo make