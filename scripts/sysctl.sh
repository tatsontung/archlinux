#!/usr/bin/env bash

echo "setting sysctl to 9001!!!"

# this number is for angular js watch files changes
sudo sysctl fs.inotify.max_user_watches=524288
cp files/welcome.sh ~/.oh-my-zsh/custom/