#!/usr/bin/env bash

export SCRIPTS_DIR="$(dirname "$0")/scripts"
${SCRIPTS_DIR}/debian/bootstrap.sh
${SCRIPTS_DIR}/git.sh
${SCRIPTS_DIR}/configuration-bash.sh
${SCRIPTS_DIR}/finished.sh
