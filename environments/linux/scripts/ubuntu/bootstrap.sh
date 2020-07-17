#!/usr/bin/env bash

# Get root up in here
#sudo su

# Update all dependencies and install packages
sudo add-apt-repository ppa:lazygit-team/release

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git build-essential vim neovim wget curl htop lsof tilix tmux tty-clock neofetch screenfetch cowsay fortune-mod figlet \
gnome-tweaks fzf fasd zsh taskwarrior copyq ranger ripgrep silversearcher-ag fd-find mc cmus httpie tree xsel \
nginx chromium-browser python python3 python3-pip ruby memcached docker docker-compose snapd lazygit \
openjdk-8-jdk openjdk-11-jdk

# Python dependencies
pip3 install ueberzug
pip3 install pynvim
pip3 install neovim-remote

# Install from snap package
sudo snap install universal-ctags

# Install lazy docker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
