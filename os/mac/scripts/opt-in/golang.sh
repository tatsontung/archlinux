echo
echo "Installing Golang Development tools"

mkdir -p ~/go/src
brew install go
brew install dep
brew cask install goland

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=goland
popd
