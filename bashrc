##################################################
# 'About' section for 'The Ultimate Bashrc File' #
##################################################

function about() {
cat <<EOF
##################################################
# The Ultimate Bashrc File			 #
# .bashrc					 #
# Creator:		Inameiname		 #
# Version: 3.9			 		 #
# Last modified: 	12 October 2011		 #
# License:		GPLv3+			 #
#						 #
# Latest Changes:				 #
# 3.9 - 12/10/11 - Added more functions and 	 #
# aliases, including, about, cleanup, 		 #
# repository-update-check, title, paste, upper,  #
# lower, listhw, diffxml, vie, wgetall, cpo, 	 #
# isdef, quietly, cpus, codename, codename_ver,  #
# distro, jd, jda, upto, xpath, dups, 		 #
# comparenclean, relinux-copy, & remastersys-	 #
# copy, as well as added a relinux & remastersys #
# alias section, and updated extundelete aliases #
#			 			 #
# Descripton:					 #
# For those who love using the terminal, here is #
# a '.bashrc' file I created, mainly for those 	 #
# who've had issues with their own. Hopefully 	 #
# it'll benefit those of whom love aliases, 	 #
# functions, and such. Probably more than you  	 #
# need, so modify all you want. I've organized it#
# best I can to make it easier for using and 	 #
# modification. This is also for those many 	 #
# who've had a difficult time finding a good 	 #
# source for their own on the net, like it was 	 #
# for me.					 #
# Oh, and any modifications that others wish to  #
# share are always welcome. 			 #
#						 #
# Installation Instructions:			 #
# Just extract the tar file and put in your 	 #
# home directory. You may have to overwrite the  #
# current one, so be sure to backup whatever 	 #
# beforehand. FYI, the default text in the 	 #
# '.bashrc' is included in this version so if 	 #
# you haven't modified it at all, you should  	 #
# have nothing to worry about.			 #
# To refresh it, just type in the terminal:	 #
# source ~/.bashrc				 #
# ...or just close and open your terminal window.#
# 						 #
# License:					 #
# This program is free software; you can 	 #
# redistribute it and/or modify it under the 	 #
# terms of the GNU General Public License as 	 #
# published by the Free Software Foundation; 	 #
# either version 3 of the License, or (at your 	 #
# option) any later version.			 #
#						 #
# This program is distributed in the hope that it#
# will be useful, but WITHOUT ANY WARRANTY; 	 #
# without even the implied warranty of 		 #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR 	 #
# PURPOSE. See the GNU General Public License 	 #
# for more details.				 #
#						 #
# Credits:					 #
# Found through various sources (including 	 #
# several things by me). I credit when I can.	 #
# Commented-out stuff is what I personally do not#
# need, so use at your own risk.		 #
# Feel free to copy, share, tweak, eat, or	 #
# whatever. Just remember to give credit, as I 	 #
# have put a lot of work into this. Enjoy.	 #
##################################################
EOF
}

#######################################################
#----- ORIGINAL CONTENT ------ ORIGINAL CONTENT ------#
#######################################################

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# enable for window
DIR_COLORS=~/.dircolors
export DIR_COLORS

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

###########################################################
#----- CUSTOM STARTS HERE ------ CUSTOM STARTS HERE ------#
###########################################################

################################################################
###### MISCELLANEOUS ###### MISCELLANEOUS ###### MISCELLANEOUS #
################################################################

if [ "$PS1" ]; then	# if running interactively, then run till 'fi' at EOF:

# source ~/.bashlocalrc	# settings that vary per workstation
OS=$(uname)		# for resolving pesky os differing switches

##########################################################
###### COMMAND PROMPT & CLI ###### COMMAND PROMPT & CLI ##
##########################################################

##################################################
# Prompt escapes				 #
##################################################

# Bash allows these prompt strings to be customized by inserting a
# number of backslash-escaped special characters that are
# decoded as follows:

#  \a         an ASCII bell character (07)
#  \d         the date in "Weekday Month Date" format (e.g., "Tue May 26")
#  \D{format} the format is passed to strftime(3) and the result
#             is inserted into the prompt string an empty format
#             results in a locale-specific time representation.
#             The braces are required
#  \e         an ASCII escape character (033)
#  \h         the hostname up to the first `.'
#  \H         the hostname
#  \j         the number of jobs currently managed by the shell
#  \l         the basename of the shell's terminal device name
#  \n         newline
#  \r         carriage return
#  \s         the name of the shell, the basename of $0 (the portion following
#             the final slash)
#  \t         the current time in 24-hour HH:MM:SS format
#  \T         the current time in 12-hour HH:MM:SS format
#  \@         the current time in 12-hour am/pm format
#  \A         the current time in 24-hour HH:MM format
#  \u         the username of the current user
#  \v         the version of bash (e.g., 2.00)
#  \V         the release of bash, version + patch level (e.g., 2.00.0)
#  \w         the current working directory, with $HOME abbreviated with a tilde
#  \W         the basename of the current working directory, with $HOME
#             abbreviated with a tilde
#  \!         the history number of this command
#  \#         the command number of this command
#  \$         if the effective UID is 0, a #, otherwise a $
#  \nnn       the character corresponding to the octal number nnn
#  \\         a backslash
#  \[         begin a sequence of non-printing characters, which could be used
#             to embed a terminal control sequence into the prompt
#  \]         end a sequence of non-printing characters
#
#  The command number and the history number are usually different:
#  the history number of a command is its position in the history
#  list, which may include commands restored from the history file
#  (see HISTORY below), while the command number is the position in
#  the sequence of commands executed during the current shell session.
#  After the string is decoded, it is expanded via parameter
#  expansion, command substitution, arithmetic expansion, and quote
#  removal, subject to the value of the promptvars shell option (see
#  the description of the shopt command under SHELL BUILTIN COMMANDS
#  below).

########################
#     Color chart			 #
########################

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

######################################
# This bashrc's current prompt		 	 #
######################################
PATH=$PATH:/h/Applications/GitHub/scripts
PS1="\[$txtred\]\h\[$txtgrn\]@\u \[$txtylw\] \d \w \n\[$txtcyn\]yuwillsee \[$txtpur\]\$ \[$txtrst\]"
[[ "$PS1" ]] && fortune | cowsay -n
echo ""
echo ""
screenfetch
echo ""
fi
# end interactive check
