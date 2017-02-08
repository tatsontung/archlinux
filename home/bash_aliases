#!bin/sh
## tinwhistle box ~/.bash_aliases file for user
# User specific aliases and functions

# Streaming Radio Stations
alias kdox='mplayer http://wms2.mainstreamnetwork.com/kdox-am &'
alias wabc='mplayer http://69.28.128.148:80/stream/citadelcc_WABC-AM &'

# Clear the terminal
alias cls='clear'

# Start X server
#alias x='startx'

# Disk free in human terms
alias df='df -h'

# List paths
alias path='echo -e ${PATH//:/\\n}'

# Upgrade/update system
# alias upgrade='sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove'

# Encode wav files to flac and delete the wav file
alias zipwavd='flac -V --best --delete-input-file *.wav'

# Encode wav files to flac and keep the wav file
alias zipwav='flac -V --best *.wav'

# Decode flac files to wav format
alias uzipwav='flac -d -V *.flac'

# Encode wav to ogg
# alias oggem=oggenc -n *.wav -o *.ogg

# Allow local users to use my X session
# xhost +local:

# I can't remember the new gnome command!
alias gtop='/usr/bin/gnome-system-monitor'

# Alter the ls command
alias l='ls -CF'
alias ll='ls --color --time-style="+%b %d %Y %H:%M"'
alias ls='ls --color=auto'
alias lls='ls -lac'
alias la="ls --color -lAGbh --time-style='+%b %d %Y %H:%M'"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Set background in Fluxbox
# alias bg='fbsetbg -a /home/phil/Pictures/kells/kelljesusarrest.gif'
# alias bg='fbsetbg -a /home/phil/Pictures/kells/KellsFol114rArrestOfChrist.jpg'
# alias bg='fbsetbg -a /home/phil/Pictures/kells/KellsFol007vMadonnaChild.jpg'
# alias bg='fbsetbg -a /home/phil/Pictures/kells/4evangelists.jpg'

# Become system administrator
alias god='sudo -i'
alias root='sudo -i'

# Because less is more and more is less
alias more='less'

# xterm
# alias xterm='xterm -bg black -fg green'

# For nano editor
alias nano='nano -w'

# Start gkrellm after stopping it in x
alias gkrellm='gkrellm -w &'

# Kill mplayer
alias kmp='killall -9 mplayer & killall -9 gnome-mplayer'
alias git_log="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
