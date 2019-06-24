#!/usr/bin/env bash

export SCRIPTS_DIR="$(dirname "$0")/os"
$SCRIPTS_DIR}/ubuntu/bootstrap.sh
$SCRIPTS_DIR}/ubuntu/node.sh
$SCRIPTS_DIR}/common-git.sh
$SCRIPTS_DIR}/common-linux.sh
#$SCRIPTS_DIR}/common-proxy.sh