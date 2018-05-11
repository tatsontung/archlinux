#!/usr/bin/env bash

echo "Installing custom fonts"
pushd ~/
if [ ! -d ~/.fonts-custom ]; then
  git clone https://github.com/victorfu/fonts ~/.fonts-custom
  source ~/.fonts-custom/install.sh
fi
popd

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