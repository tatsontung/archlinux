#!/usr/bin/env bash
echo
echo "Proxy madness"

alias proxyon='export http_proxy="http://127.0.0.1:3128"; export https_proxy="http://127.0.0.1:3128"'
alias proxyoff="export http_proxy=;export https_proxy= "
alias gitproxyon="git config --global http.proxy http://127.0.0.1:3128"
alias gitproxyoff="git config --global --unset http.proxy"