#!/usr/bin/env bash

echo "Installing node"
sudo curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

echo
echo "Installing global NodeJS Packages"
cp files/npmrc ~/.npmrc

sudo apt -y --force-yes install nodejs
