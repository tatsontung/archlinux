#!/usr/bin/env bash

# Get root up in here
# sudo su

# Configuration for cntlm proxy parser
# echo 'Acquire::http::Proxy "http://10.0.2.2:3128";' >> /etc/apt/apt.conf.d/99proxy

# Update and begin installing some utility tools
echo "add atom and intellij-idea-community android-studio in umake repos"
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo add-apt-repository ppa:webupd8team/terminix

echo "add typora"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb http://typora.io linux/'

echo "add google-chrome-stable"
sudo add-apt-repository "deb https://dl.google.com/linux/chrome/deb/ stable main"
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

echo "add node repos"
sudo curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt -y --force-yes update
sudo apt -y --force-yes upgrade
sudo apt -y --force-yes install vim curl htop lsof git memcached build-essential \
python mongodb docker docker-compose vagrant virtualbox terminix maven gradle nginx \
screenfetch cowsay fortune-mod zsh atom nodejs typora google-chrome-stable \
openjdk-8-jdk ubuntu-make
#umake android android-studio
umake ide idea
umake ide visual-studio-code --accept-license
#umake go
