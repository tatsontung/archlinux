#!/usr/bin/env bash

# Get root up in here
# sudo su

# Configuration for cntlm proxy parser
# echo 'Acquire::http::Proxy "http://10.0.2.2:3128";' >> /etc/apt/apt.conf.d/99proxy

# Update and begin installing some utility tools
sudo apt -y --force-yes update
sudo apt -y --force-yes upgrade
sudo apt -y --force-yes install vim curl htop lsof git memcached build-essential \
python mongodb docker docker-compose screenfetch cowsay fortune-mod zsh tmux
