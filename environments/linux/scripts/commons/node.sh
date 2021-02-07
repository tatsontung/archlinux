#!/usr/bin/env bash

echo "Installing node"
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

nvm install --lts=erbium # "node" is an alias for the latest version

echo "Configure npmrc"
cat > ~/.npmrc << EOL
cache=${HOME}/.npm-cache
strict-ssl=false
EOL

echo "Installing angular 2 core"
npm i -g @angular/cli @angular/core
