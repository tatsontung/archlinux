#!/usr/bin/env bash

# Get root up in here
# sudo su

# Configuration for cntlm proxy parser
# echo 'Acquire::http::Proxy "http://10.0.2.2:3128";' >> /etc/apt/apt.conf.d/99proxy

# Update and begin installing some utility tools
echo "add atom and intellij-idea-community android-studio in umake repos"
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make

echo "add node repos"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt -y --force-yes update
sudo apt -y --force-yes upgrade
sudo apt -y --force-yes install vim curl htop lsof git memcached build-essential \
python mongodb docker docker-compose vagrant virtualbox terminix nginx \
screenfetch cowsay fortune-mod zsh atom nodejs \
openjdk-8-jdk ubuntu-make
#umake android android-studio
umake ide idea
umake ide visual-studio-code --accept-license
#umake go
