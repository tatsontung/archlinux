#!/usr/bin/env bash
# Vim
echo
echo "Installing vim configuration"
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    ~/.vim/bin/install
fi
popd

echo "Installing custom fonts"
pushd ~/
if [ ! -d ~/.fonts-custom ]; then
  git clone https://github.com/victorfu/fonts ~/.fonts-custom
  ~/.fonts-custom/install.sh
fi
popd

echo "Install custom zsh and dircolors"
cp files/dircolors.ansi-dark ~/.dircolors
cp files/zshrc ~/.zshrc

echo "Install tilix color shemes and load themes"
pushd ~/
if [ ! -d ~/.config/tilix/shemes ]; then
  mkdir -p ~/.config/tilix/schemes/
  wget -qO $HOME"/.config/tilix/schemes/homebrew.json" https://git.io/v7Qa4
fi
popd
dconf load /com/gexperts/Tilix/ < files/terminix.dconf

echo "Install atom package and extensions"
apm install minimap file-icons autocomplete-modules color-picker \
pigments git-plus platformio-ide-terminal autosave atom-beautify atom-monokai monokai

echo "Install Visual Studio Code plugins"
#code --install-extension PKief.material-icon-theme
#code --install-extension bbenoist.vagrant
