#!/usr/bin/env bash
echo
echo "Configuring bash with oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

cp files/dircolors.ansi-dark ~/.dircolors
cp files/npmrc ~/.npmrc
cp files/dircolors.ansi-dark ~/.dircolors