#!bin/zsh
# Add yourself some shortcuts to projects you often work on

alias vi='vim'
alias zshreload="source ~/.zshrc"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

#dockers
alias dockercontainerclean='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias dockerimageclean='docker images --filter dangling=true -q | xargs docker rmi'

# proxy madness
alias proxyon="export http_proxy=http://127.0.0.1:3128; export https_proxy=http://127.0.0.1:3128"
alias proxyoff="export http_proxy=;export https_proxy= "
alias npmproxyon="npm config set proxy http://127.0.0.1:3128;npm config set https-proxy http://127.0.0.1:3128"
alias npmproxyoff="npm config rm proxy;npm config rm https-proxy"
alias gitproxyon="git config --global http.proxy http://27.0.0.11:3128"
alias gitproxyoff="git config --global --unset http.proxy"
