#!/usr/bin/env bash
echo "Install custom dircolors"
cp files/dircolors.ansi-dark ~/.dircolors
cp files/zshrc ~/.zshrc

echo "Configuration Cmus"
mkdir -p ~/.config/cmus
cat > ~/.config/cmus/rc << EOL
set output_plugin=alsa
set dsp.alsa.device=default
set mixer.alsa.device=default
set mixer.alsa.channel=Master
EOL

echo "Install Tilix color shemes and load themes"
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
foreground-color='#A1B0B8'
visible-name='Default'
login-shell=true
palette=['#252525', '#FF5252', '#C3D82C', '#FFC135', '#42A5F5', '#D81B60', '#00ACC1', '#F5F5F5', '#708284', '#FF5252', '#C3D82C', '#FFC135', '#42A5F5', '#D81B60', '#00ACC1', '#F5F5F5']
badge-color-set=false
use-system-font=false
cursor-colors-set=false
highlight-colors-set=false
use-theme-colors=false
bold-color-set=false
font='monofur for Powerline Bold 12'
background-color='#263238'
EOL
dconf load /com/gexperts/Tilix/ < /tmp/tilix.conf

# Postman is an API Tools
echo "Install Postman"
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

chsh -s `which zsh`

echo "setting sysctl to 9001!!!"
# this number is for angular js watch files changes
sudo sysctl fs.inotify.max_user_watches=524288
sudo sysctl -p --system