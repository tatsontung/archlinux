#!/usr/bin/env bash

export SCRIPTS_DIR="$(dirname "$0")/scripts"
$SCRIPTS_DIR}/manjaro/bootstrap.sh
$SCRIPTS_DIR}/manjaro/node.sh
$SCRIPTS_DIR}/common-git.sh
$SCRIPTS_DIR}/common-linux.sh