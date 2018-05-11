#!/usr/bin/env bash

# Get root up in here
# sudo su

# Configuration for cntlm proxy parser
# echo 'Acquire::http::Proxy "http://10.0.2.2:3128";' >> /etc/apt/apt.conf.d/99proxy

sudo apt -y --force-yes update
sudo apt -y --force-yes upgrade
sudo apt -y --force-yes install vim curl htop lsof git memcached build-essential \
python docker docker-compose vagrant virtualbox maven gradle nginx \
screenfetch cowsay fortune-mod zsh  chromium-browser openjdk-8-jdk cmus

echo "Installing node"
sudo curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

sudo apt -y --force-yes install nodejs
