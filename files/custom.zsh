#!bin/zsh
# Add yourself some shortcuts to projects you often work on

alias vi='vim'
alias zshreload="source ~/.zshrc"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

#dockers
alias dockercontainerclean='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias dockerimageclean='docker images --filter dangling=true -q | xargs docker rmi'
