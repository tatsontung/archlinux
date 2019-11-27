#!/usr/bin/env bash
# Fail immediately if any errors occur
# When we are in orange configurations with eburo linux
# Some proxy and config need to be configured here
# Some team members will be updated here

touch ~/.git-authors
cat ~/.git-authors <<EOL
authors:
  tat: Tat Son Tung NGUYEN
  tng: Tat Son Tung NGUYEN; tatsontung.nguyen
email:
  domain: corporate.com
email_addresses:
  tat: tatsontung.nguyen@noreply.com
EOL

touch ~/.npmrc
cat ~/.npmrc <<EOL
cache=${HOME}/.npm-cache
prefix=${HOME}/.npm-packages
strict-ssl=false
#internal-registry=https://internal.corporated/artifactory/api/npm/npmproxy
#@internal-corporate:registry=https://internal.corporate/api/npm/location/
EOL
