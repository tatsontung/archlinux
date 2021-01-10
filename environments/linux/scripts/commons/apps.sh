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
    popd
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

# Install FzF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# LSD (LS Deluxe)
echo "Install lsd nexgen ls command written in Rust"
curl https://github.com/Peltoche/lsd/releases/download/0.19.0/lsd_0.19.0_amd64.deb -O -J -L
sudo dpkg -i lsd_0.19.0_amd64.deb

# Vim
echo
echo "Installing vim configuration"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
if [ ! -d ~/.config/nvim ]; then
  git clone -b tatsontung https://github.com/tatsontung/nvim ~/.config/nvim
  ~/.config/nvim/utils/install.sh
else
  echo "Already clone nvim repo"
fi

echo
echo "-----------------------------------------"
echo "Done!"
echo "-----------------------------------------"
echo
echo "If hostname needs to be set consider"
echo "sudo scutil --set ComputerName newname"
echo "sudo scutil --set LocalHostName newname"
echo "sudo scutil --set HostName newname"
echo
echo "You can use 'git pair' (enabled) 'git duet' (enabled) or 'git with' aka git-together (installed but not enabled)"
echo "To enable git together"
echo "'git=git-together' >> ~/.bash_profile"
echo
echo "After checking the above output for any problems, start a new terminal session to make use of all the installed tools."
echo "Rebooting is only necessary for keyboard repeat settings to work."
echo
