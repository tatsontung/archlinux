#!/usr/bin/env bash
SETUP_TYPE=$1
ENVR=$2
MY_DIR="$(dirname "$0")"

function install_script() {
    cp ${MY_DIR}/environments/${ENVR}/home.zshrc ~/.zshrc
    source ${MY_DIR}/environments/${ENVR}/homeconfig.sh
    source ${MY_DIR}/${SETUP_TYPE}/bootstrap.sh
    source ${MY_DIR}/${SETUP_TYPE}/node.sh
    source ${MY_DIR}/commons/apps.sh
    source ${MY_DIR}/commons/config.sh
    source ${MY_DIR}/commons/git.sh
    source ${MY_DIR}/commons/zsh.sh
}

function pre-requis() {
    sudo cp ${MY_DIR}/environments/${ENVR}/apt.95proxies /etc/apt/apt.conf.d/95proxies
    source ${MY_DIR}/environments/${ENVR}/cntlm.sh
}

# Fail immediately if any errors occur
set -e
clear
echo "Setting up a '$SETUP_TYPE' machine... with '$ENVR'"
case $ENVR in
    internal)
        pre-requis
        install_script
    ;;
    *)
        install_script
    ;;
esac


