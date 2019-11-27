#!/usr/bin/env bash

# Get root up in here
#sudo su

# Update all dependencies and install packages
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages update
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages upgrade
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages install \
vim wget curl htop lsof git memcached build-essential \
python docker docker-compose nginx tilix tmux tty-clock httpie \
screenfetch cowsay fortune-mod zsh chromium-browser openjdk-8-jdk  \
taskwarrior copyq ranger mc cmus figlet cowsay fortune-mod