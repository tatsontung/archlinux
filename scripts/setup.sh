#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

SETUP_TYPE=$1
MY_DIR="$(dirname "$0")"
clear

echo
echo "Setting up a '$SETUP_TYPE' machine..."

source ${MY_DIR}/${SETUP_TYPE}/bootstrap.sh
source ${MY_DIR}/git.sh
source ${MY_DIR}/tilix.sh
source ${MY_DIR}/config.sh
source ${MY_DIR}/vim.sh
source ${MY_DIR}/node.sh
source ${MY_DIR}/zsh.sh
source ${MY_DIR}/finished.sh
source ${MY_DIR}/sysctl.sh

set e
