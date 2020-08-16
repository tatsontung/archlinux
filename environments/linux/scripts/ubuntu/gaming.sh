#!/usr/bin/env bash

# Get root up in here
#sudo su

sudo dpkg --add-architecture i386

# AMD
#sudo add-apt-repository ppa:kisak/kisak-mesa -y
#sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y

# NVIDIA
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt install nvidia-driver-450 libnvidia-gl-450 libnvidia-gl-450:i386 libvulkan1 libvulkan1:i386 -y

# Wine Lutris
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update
sudo apt-get install --install-recommends winehq-staging -y
sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y
sudo apt-get install lutris -y

# Proton
cd ~
wget https://raw.githubusercontent.com/Termuellinator/ProtonUpdater/master/cproton.sh
sudo chmod +x cproton.sh
./cproton.sh