#!bin/sh

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

if [ "$(whoami)" != "root" ]
then
  sudo chsh -s `which fish`
else
  chsh -s `which fish`
fi

cat > $HOME/.config/fish/config.fish <<EOL
# Init config file for fish
set -Ua fish_user_paths $HOME/.local/bin
set -Ua fish_user_paths $HOME/bin

# No greeting when starting an interactive shell.
function fish_greeting
  # fisher update
  pfetch
end

set -g theme_display_user yes
set -g theme_display_hostname yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_git_untracked yes
set -g theme_display_git_dirty yes
set -g theme_display_nvm yes
set -g theme_display_virtualenv yes
set -g theme_color_scheme gruvbox

# Example aliases
alias v='f -e vim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open
alias vi='vim'
alias nv='nvim'
alias config.fish="vim ~/.config/fish/config.fish"
alias config.npm="vim ~/.npmrc"
alias config.ssh="vim ~/.ssh/config"
alias config.git="vim ~/.gitconfig"
alias reload.fish="omf.reload"

# ls
alias ll='ls -l'
alias la='ls -la'
alias llc='colorls -lA --sd'
alias lc='colorls --sd'
EOL

cat > $HOME/.config/fish/fish_plugins <<EOL
jorgebucaran/fisher
oh-my-fish/theme-bobthefish
jethrokuan/fzf
jorgebucaran/fish-nvm
EOL



