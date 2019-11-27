#!/usr/bin/env bash

# Get root up in here
# sudo su

# Configuration for cntlm proxy parser
# echo 'Acquire::http::Proxy "http://10.0.2.2:3128";' >> /etc/apt/apt.conf.d/99proxy

# Update all dependencies and install packages
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages update
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages upgrade
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages install \
vim wget curl htop lsof git memcached build-essential \
python docker docker-compose nginx tilix tmux tty-clock httpie \
screenfetch cowsay fortune-mod zsh chromium-browser openjdk-8-jdk  \
taskwarrior copyq ranger mc cmus figlet cowsay fortune-mod

# Installation docker engine CE
sudo apt-get install apt-transport-https dirmngr
sudo add-apt-repository 'deb https://apt.dockerproject.org/repo debian-stretch main'
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get update
sudo apt-get install docker-engine

# Numix Theme and Icons
# sudo apt install numix-gtk-theme numix-icon-theme

echo "Installing gnome-keyring-dev"
sudo apt-get install libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring
sudo make
