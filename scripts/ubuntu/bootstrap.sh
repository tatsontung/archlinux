#!/usr/bin/env bash

# Get root up in here
# sudo su

# Configuration for cntlm proxy parser
# echo 'Acquire::http::Proxy "http://10.0.2.2:3128";' >> /etc/apt/apt.conf.d/99proxy

sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages update
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages upgrade
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages install \
vim curl htop lsof git memcached build-essential \
python docker docker-compose nginx tilix stterm tmux tty-clock \
screenfetch cowsay fortune-mod zsh chromium-browser openjdk-8-jdk cmus \
taskwarrior copyq numix-icon-theme numix-gtk-theme ranger mc httpie \
i3-wm dunst i3lock i3status suckless-tools \
compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior

# Snap is an universal packages manager
sudo snap install code --classic
sudo snap install intellij-idea-community --classic             
sudo snap install android-studio --classic
sudo snap install postman --classic