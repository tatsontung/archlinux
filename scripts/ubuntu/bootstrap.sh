#!/usr/bin/env bash

# Get root up in here
sudo su

# Configuration for cntlm proxy parser
# echo 'Acquire::http::Proxy "http://10.0.2.2:3128";' >> /etc/apt/apt.conf.d/99proxy

# Nodejs Repo
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# Visual Code Studio Repo
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Update and begin installing some utility tools
apt -y --force-yes update
apt -y --force-yes install vim curl htop lsof golang perl ruby \
git memcached build-essential python mongodb nodejs code docker docker-compose vagrant virtualbox \
screenfetch cowsay fortune-mod
