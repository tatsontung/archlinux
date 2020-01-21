#!/usr/bin/env bash

echo "Installing node"
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt update
sudo apt --allow-downgrades --allow-remove-essential --allow-change-held-packages install nodejs

echo "Configure npmrc"
cat > ~/.npmrc << EOL
cache=${HOME}/.npm-cache
prefix=${HOME}/.npm-packages
strict-ssl=false
EOL

echo "Installing angular 2 core"
npm i -g @angular/cli @angular/core

echo "Installing NVM node version manager"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
