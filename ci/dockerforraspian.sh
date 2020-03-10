#!/usr/bin/env bash
echo "Configuring server"

set -e
while getopts h:u:z:o:s:i: opt; do
    case $opt in
        h)
            show_help 0
            ;;
        u)
            user="$OPTARG"
            ;;
        z)
            cluster="$OPTARG"
            ;;
        o)
            org="$OPTARG"
            ;;
        s)
            space="$OPTARG"
            ;;
        i)
            instance="$OPTARG"
            ;;
        *)
            show_help 1 >&2
            ;;
    esac
done

sudo sed -i "s/ubuntu/$NEWHOST/g" /etc/hosts
sudo sed -i "s/ubuntu/$NEWHOST/g" /etc/hostname

sudo nano /etc/hostname
sudo nano /etc/hosts
sudo reboot - h now
sudo raspi - config
sudo reboot - h now
sudo apt install docker docker - compose
sudo usermod - aG docker "$USER"
git clone https: //github.com/gcgarner/IOTstack.git ~/IOTstack
./menu.sh
docker - compose up - d
git clone https: //github.com/azlux/log2ram.git
cd log2ram || exit
sudo ./install.sh
sudo nano / etc/log2ram.conf
exit
docker container list
docker container la
docker container ls - a
docker images
docker container start
docker container ls - a
docker container start bd596b1ec7a0
docker container start b16979462dc8
vi docker-compose.yml
vi services/pihole/pihole.env
vi docker-compose.yml
df - h
sudo apt-get install git lsb-release
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd log2ram || exit
chmod +x retropie_setup.sh
sudo ./retropie_setup.sh
