#!/usr/bin/env bash

apt update -y
apt upgrade -y
apt install -y git build-essential vim neovim wget curl htop lsof tilix tmux tty-clock \
fzf fasd zsh taskwarrior copyq ranger mc cmus httpie tree xsel samba-common exfat-utils \
nginx python python3 python3-pip ruby memcached docker docker-compose python3-pip pkg-config
