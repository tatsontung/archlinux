#!/usr/bin/env bash

export SCRIPTS_DIR="$(dirname "$0")/scripts"
source ${SCRIPTS_DIR}/debian/bootstrap.sh
source ${SCRIPTS_DIR}/config.sh
source ${SCRIPTS_DIR}/git.sh
source ${SCRIPTS_DIR}/vim.sh
source ${SCRIPTS_DIR}/zsh.sh
source ${SCRIPTS_DIR}/finished.sh
