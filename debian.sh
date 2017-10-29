#!/usr/bin/env bash

export SCRIPTS_DIR="$(dirname "$0")/scripts"
${SCRIPTS_DIR}/debian/bootstrap.sh
${SCRIPTS_DIR}/config.sh
${SCRIPTS_DIR}/git.sh
${SCRIPTS_DIR}/vim.sh
${SCRIPTS_DIR}/zsh.sh
${SCRIPTS_DIR}/finished.sh
