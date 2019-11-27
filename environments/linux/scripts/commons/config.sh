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
