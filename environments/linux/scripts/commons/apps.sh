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
fi
popd
cat > /tmp/tilix.conf <<EOL
[/]
quake-height-percent=90
prompt-on-close=true
terminal-title-style='small'
theme-variant='system'
enable-wide-handle=false
warn-vte-config-issue=false
terminal-title-show-when-single=false
window-style='borderless'

[profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d]
foreground-color='#00FF00'
login-shell=true
palette=['#000000', '#990000', '#00A600', '#999900', '#0000B2', '#B200B2', '#00A6B2', '#BFBFBF', '#666666', '#E50000', '#00D900', '#E5E500', '#0000FF', '#E500E5', '#00E5E5', '#E5E5E5']
badge-color-set=false
use-system-font=false
cursor-colors-set=false
highlight-colors-set=false
use-theme-colors=false
bold-color-set=false
font='Monospace Bold 12'
background-color='#000000'
EOL
dconf load /com/gexperts/Tilix/ < /tmp/tilix.conf

# Install Ktlint
curl -o ~/bin/ktlint https://github.com/pinterest/ktlint/releases/download/0.33.0/ktlint && chmod a+x ~/bin/ktlint

# Vim
echo
echo "Installing vim configuration"
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/tatsontung/vim-config.git ~/.vim
    source ~/.vim/bin/install
fi
popd

echo "Configuration Unity Dock"
#gsettings reset org.gnome.shell.extensions.dash-to-dock dash-max-icon-size
sudo apt install dconf-tools
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true
