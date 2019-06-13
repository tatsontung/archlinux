#!/usr/bin/env bash
echo
echo "Installing Git and associated tools"

# Git configuration
echo
echo "Setting up user"
echo "Configuration Git"
git config --global user.name "Nguyen Tat Son Tung"
git config --global user.email tatsontung.nguyen@noreply.com
git config --global core.editor vim

echo
echo "Setting up Git aliases..."
git config --global alias.gst git status
git config --global alias.st status
git config --global alias.di diff
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.sta stash
git config --global alias.llog "log --date=local"
git config --global alias.flog "log --pretty=fuller --decorate"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.lol "log --graph --decorate --oneline"
git config --global alias.lola "log --graph --decorate --oneline --all"
git config --global alias.blog "log origin/master... --left-right"
git config --global alias.ds diff --staged
git config --global alias.fixup commit --fixup
git config --global alias.squash commit --squash
git config --global alias.unstage reset HEAD
git config --global alias.rum "rebase master@{u}"

echo
echo "Setting default (simple) git push behavior..."
git config --global push.default simple
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring

# Git Duet configuration
echo
echo "Configuration Git duet"

mkdir /tmp/gitduet
curl -L https://github.com/git-duet/git-duet/releases/download/0.5.2/linux_amd64.tar.gz > /tmp/gitduet/gitduet.tar.gz
tar -xvzf /tmp/gitduet/gitduet.tar.gz --directory /tmp/gitduet
sudo mv /tmp/gitduet/git-* /usr/local/bin

echo
echo "Setting up Git duet aliases..."
git config --global alias.dc duet-commit

# Setup git authors for git duet
cat > ~/.git-authors << EOL
authors:
  tat: Tat Son Tung NGUYEN
  tng : Tat Son Tung Nguyen; tatsontung.nguyen
email:
  domain: noreplay.auto.com
email_addresses:
  tat: tatsontung.nguyen@noreply.com
EOL

####
#### Git apps goodness
echo "Installing custom fonts"
pushd ~/
if [ ! -d ~/.fonts-custom ]; then
  git clone https://github.com/victorfu/fonts ~/.fonts-custom
fi
~/.fonts-custom/install.sh
popd

# Vim
echo
echo "Installing vim configuration"
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    source ~/.vim/bin/install
fi
popd

# NVM
echo "Installing NVM node version manager"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# NPMRC
echo "Configure npmrc"
cat > ~/.npmrc << EOL
cache=${HOME}/.npm-cache
prefix=${HOME}/.npm-packages
registry=https://artifactory-iva.si.francetelecom.fr/artifactory/api/npm/npmproxy
strict-ssl=false
EOL