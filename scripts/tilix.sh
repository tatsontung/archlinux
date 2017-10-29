#!/usr/bin/env bash

echo "Install tilix color shemes and load themes"
pushd ~/
if [ ! -d ~/.config/tilix/shemes ]; then
  mkdir -p ~/.config/tilix/schemes/
  wget -qO $HOME"/.config/tilix/schemes/homebrew.json" https://git.io/v7Qa4
fi
popd
dconf load /com/gexperts/Tilix/ < files/terminix.dconf
