#!/usr/bin/env bash

echo "Installing node"
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt -y --force-yes install nodejs

echo "Installing global NodeJS Packages"
cp files/npmrc ~/.npmrc

echo "Installing angular 2 core"
npm i -g @angular/cli @angular/core

echo "Installing NVM node version manager"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
