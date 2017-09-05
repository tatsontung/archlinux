#!/usr/bin/env bash
echo
echo "Installing global NodeJS Packages"
cp files/npmrc ~/.npmrc
npm i -g @angular/cli
