#!/usr/bin/env bash

# # Postman is an api tools
# echo "Installing lib dependency for postman"
# sudo apt install libgconf-2-4
# sudo rm -f /usr/bin/postman

# echo "Installing postman binary"
# wget https://dl.pstmn.io/download/latest/linux64 -O /tmp/postman.tar.gz
# sudo tar -xzf /tmp/postman.tar.gz -C /opt
# rm /tmp/postman.tar.gz
# sudo ln -s /opt/Postman/Postman /usr/bin/postman

# echo "Customize desktop configuration"
# touch ~/.local/share/applications/postman.desktop
# cat > ~/.local/share/applications/postman.desktop <<EOL
# [Desktop Entry]
# Encoding=UTF-8
# Name=Postman
# Exec=postman
# Icon=/opt/Postman/app/resources/app/assets/icon.png
# Terminal=false
# Type=Application
# Categories=Development;
# EOL

# Tilix
echo "Install tilix color shemes and load themes"
sudo apt install tilix
pushd ~/
if [ ! -d ~/.config/tilix/shemes ]; then
    mkdir -p ~/.config/tilix/schemes/
    wget -qO $HOME"/.config/tilix/schemes/homebrew.json" https://git.io/v7Qa4
    git clone https://github.com/tatsontung/tilix-gruvbox.git
    pushd tilix-gruvbox
    sudo cp gruvbox-* /usr/share/tilix/schemes
    popd ..
    rm -rf tilix-gruvbox
fi
popd
cat > /tmp/tilix.conf <<EOL
[/]
enable-wide-handle=false
prompt-on-close=true
prompt-on-delete-profile=true
quake-height-percent=90
quake-specific-monitor=0
terminal-title-show-when-single=false
terminal-title-style='small'
theme-variant='system'
warn-vte-config-issue=false
window-style='borderless'

[profiles]
list=['2b7c4080-0ddd-46c5-8f23-563fd3ba789d']

[profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d]
background-color='#1D2021'
background-transparency-percent=0
badge-color-set=false
badge-position='northeast'
badge-text='${username}${hostname}'
bold-color-set=false
cursor-colors-set=false
dim-transparency-percent=0
font='Monofur Nerd Font Bold 12'
foreground-color='#EBDBB2'
highlight-colors-set=false
login-shell=true
palette=['#1D2021', '#CC241D', '#98971A', '#D79921', '#458588', '#B16286', '#689D6A', '#BDAE93', '#7C6F64', '#FB4934', '#B8BB26', '#FABD2F', '#83A598', '#D3869B', '#8EC07C', '#EBDBB2']
use-system-font=false
use-theme-colors=false
visible-name='Default'
EOL
dconf load /com/gexperts/Tilix/ < /tmp/tilix.conf

# Install Ktlint
curl -o ~/bin/ktlint https://github.com/pinterest/ktlint/releases/download/0.33.0/ktlint && chmod a+x ~/bin/ktlint

# Vim
echo
echo "Installing vim configuration"
if [ ! -d ~/.config/nvim ]; then
  git clone https://github.com/tatsontung/vim.git ~/.vim
  ln -s ~/.vim/.vimrc ~/.vimrc
  ~/.vim/bin/install
  ln -s ~/.vim/plugged/gruvbox/colors/gruvbox.vim ~/.vim/colors/gruvbox.vim
else
  echo "Already clone nvim repo"
fi

# NVim
echo
echo "Installing nvim configuration"
if [ ! -d ~/.config/nvim ]; then
  git clone -b tatsontung https://github.com/tatsontung/nvim ~/.config/nvim
  ~/.config/nvim/utils/install.sh
else
  echo "Already clone nvim repo"
fi
