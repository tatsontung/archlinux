#!/usr/bin/env bash

# Get root up in here
#sudo su

# Update all dependencies and install packages
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages update
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages upgrade
sudo apt -y --allow-downgrades --allow-remove-essential --allow-change-held-packages install \
vim curl htop lsof git memcached build-essential \
python docker docker-compose nginx tilix tmux tty-clock \
screenfetch cowsay fortune-mod zsh maven gradle chromium-browser openjdk-8-jdk cmus \
taskwarrior copyq numix-icon-theme numix-gtk-theme ranger mc httpie \
i3-wm dunst i3lock i3status suckless-tools figlet cowsay fortune-mod \
compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior