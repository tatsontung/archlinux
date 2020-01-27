#!/usr/bin/env bash

# Get root up in here
#sudo su

# Update all dependencies and install packages
sudo add-apt-repository ppa:system76/pop

sudo apt update -y 
sudo apt upgrade -y 
sudo apt install -y git build-essential vim wget curl htop lsof tilix tmux tty-clock neofetch cowsay fortune-mod figlet \
pop-theme gnome-tweaks zsh taskwarrior copyq ranger mc cmus httpie tree \
nginx chromium-browser python ruby memcached docker docker-compose \
openjdk-8-jdk openjdk-11-jdk

