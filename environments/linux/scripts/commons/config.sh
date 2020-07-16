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
if [ ! -d ~/.fonts ]; then
  mkdir -p ~/.fonts
fi
pushd ~/.fonts
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Monofur.zip -O -J -L
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip -O -J -L
unzip Monofur.zip -d Monofur
unzip Hack.zip -d Hack
fc-cache -fv ~/.fonts
rm ~/.fonts/Monofur.zip
rm ~/.fonts/Hack.zip
popd
