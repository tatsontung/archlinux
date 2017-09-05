#!/usr/bin/env bash
# Vim
echo
echo "Installing vim configuration"
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    ~/.vim/bin/install
fi
popd

# Atom
echo "Install atom package and extensions"
apm install minimap file-icons autocomplete-modules color-picker \
pigments git-plus platformio-ide-terminal autosave atom-beautify atom-monokai monokai

# Visual Studio Code
echo "Install VSC plugins"
code --install-extension marcostazi.vs-code-vagrantfile
code --install-extension DotJoshJohnson.xml
code --install-extension HookyQR.beautify
code --install-extension PKief.material-icon-theme
code --install-extension PeterJausovec.vscode-docker
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.jshint
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.python
code --install-extension eg2.tslint
code --install-extension eg2.vscode-npm-script
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension formulahendry.code-runner
code --install-extension johnpapa.Angular2
code --install-extension k--kato.intellij-idea-keybindings
code --install-extension ktriek.ng-bootstrap-snippets
code --install-extension lukehoban.Go
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension steoates.autoimport
code --install-extension xabikos.JavaScriptSnippets
