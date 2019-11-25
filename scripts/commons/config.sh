#!/usr/bin/env bash

echo "Installing custom fonts"
pushd ~/
if [ ! -d ~/.fonts-custom ]; then
    git clone https://github.com/victorfu/fonts ~/.fonts-custom
fi
~/.fonts-custom/install.sh
popd

echo "Install custom dircolors"
cp config/dircolors.ansi-dark.config ~/.dircolors

echo "Configuration Cmus"
mkdir -p ~/.config/cmus
cat > ~/.config/cmus/rc << EOL
set output_plugin=alsa
set dsp.alsa.device=default
set mixer.alsa.device=default
set mixer.alsa.channel=Master
EOL
