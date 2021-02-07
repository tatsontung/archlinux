#!/usr/bin/env bash
echo
echo "Configuring bash with oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Exit the zsh script and continue
echo "9k configurations"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo
echo "Copy zsh configuration"
mkdir -p ~/.oh-my-zsh/custom/
sysctl fs.inotify.max_user_watches=524288
chsh -s `which zsh`

# SYSCTL
echo "setting sysctl to 9001!!!"
# this number is for angular js watch files changes
echo fs.inotify.max_user_watches=524288 | tee -a /etc/sysctl.conf && sysctl -p