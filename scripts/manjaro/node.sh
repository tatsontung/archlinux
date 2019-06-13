#!/usr/bin/env bash
echo "Installing global NodeJS Packages"
yaourt -Syu --aur nvm

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh
nvm install 10.0.0
nvm use 10.0.0
echo "Installing angular 2 core"
npm i -g @angular/cli @angular/core