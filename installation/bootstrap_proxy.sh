#!bin/sh

# Configuration for npm
npm config set proxy http://127.0.0.1:3128
npm config set https-proxy http://127.0.0.1:3128
npm --https-proxy=http://127.0.0.1:3128 -g install karma

# Configuration for homebrew
ALL_PROXY=http://127.0.0.1:3128 brew install node
