#!/usr/bin/env bash
# Fail immediately if any errors occur

cat ~/.git-authors <<EOL
authors:
  tat: Tat Son Tung NGUYEN
email:
  domain: noreply.com
email_addresses:
  tat: tatsontung.nguyen@noreply.com
EOL

cat ~/.npmrc <<EOL
cache=${HOME}/.npm-cache
prefix=${HOME}/.npm-packages
strict-ssl=false
EOL
