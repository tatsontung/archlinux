#!/usr/bin/env bash
echo
echo "Configuring bash with oh-my-zsh"
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Exit the zsh script and continue
echo "9k configurations"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo
echo "Copy zsh configuration"
cp files/zshrc ~/.zshrc
cp files/custom.zsh ~/.oh-my-zsh/custom/
cp files/welcome.sh ~/.oh-my-zsh/custom/
