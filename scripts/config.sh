#!/usr/bin/env bash

echo "Installing custom fonts"
pushd ~/
if [ ! -d ~/.fonts-custom ]; then
  git clone https://github.com/victorfu/fonts ~/.fonts-custom
  ~/.fonts-custom/install.sh
fi
popd

echo "Install custom dircolors"
cp files/dircolors.ansi-dark ~/.dircolors
