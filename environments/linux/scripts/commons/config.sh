#!/usr/bin/env bash

echo "Install custom dircolors"
cp resources/dircolors.ansi-dark.config ~/.dircolors

echo "Configuration Cmus"
mkdir -p ~/.config/cmus
cat > ~/.config/cmus/rc << EOL
set output_plugin=alsa
set dsp.alsa.device=default
set mixer.alsa.device=default
set mixer.alsa.channel=Master
EOL

echo "Installing Mono nerd fonts"
pushd ~/.fonts
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Monofur.zip -O -J -L
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip -O -J -L
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/DroidSansMono.zip -O -J -L
unzip Monofur.zip -d Monofur
unzip Hack.zip -d Hack
unzip DroidSansMono.zip -d DroidSansMono
fc-cache -fv ~/.fonts
rm ~/.fonts/Monofur.zip
rm ~/.fonts/Hack.zip
rm ~/.fonts/DroidSansMono.zip
popd

https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip

echo "Configuring tilix"
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
font='Monofur Nerd Font Bold 12'
background-color='#263238'
EOL
dconf load /com/gexperts/Tilix/ < /tmp/tilix.conf