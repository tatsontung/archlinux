#!/usr/bin/env bash

# Get root up in here
if [ "$(whoami)" != "root" ]
then
    sudo su -s "$0"
    exit
fi

apt update -y
apt upgrade -y
apt install -y git build-essential vim neovim wget curl htop lsof tilix tmux tty-clock neofetch screenfetch cowsay fortune-mod figlet \
gnome-tweaks fzf fasd zsh taskwarrior copyq ranger ripgrep silversearcher-ag fd-find mc cmus httpie tree xsel samba-common exfat-utils \
nginx python python3 python3-pip ruby memcached docker docker-compose python3-pip
