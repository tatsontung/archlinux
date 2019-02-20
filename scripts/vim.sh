#!/usr/bin/env bash
# Vim
echo
echo "Installing vim configuration"
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    source ~/.vim/bin/install
fi
popd
