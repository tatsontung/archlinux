#!/usr/bin/env bash
echo
echo "Installing Git Duet and associated tools"

# Git configuration
echo
echo "Configuration Git duet"

mkdir /tmp/gitduet
curl -L https://github.com/git-duet/git-duet/releases/download/0.5.2/linux_amd64.tar.gz > /tmp/gitduet/gitduet.tar.gz
tar -xvzf /tmp/gitduet/gitduet.tar.gz --directory /tmp/gitduet
sudo mv /tmp/gitduet/git-* /usr/local/bin


echo
echo "Setting up Git duet aliases..."

git config --global alias.dc duet-commit

# move git-authors into place
cp files/.git-authors $HOME/.git-authors