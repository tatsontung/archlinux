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
code --install-extension PKief.material-icon-theme
code --install-extension bbenoist.vagrant