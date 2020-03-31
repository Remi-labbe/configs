# Profile file runs on login, setting environmental variables.

export XDG_CONFIG_HOME="$HOME/.config"

# Adding local scripts file to PATH
export PATH="$PATH:$HOME/.local"

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="lf"

# Cleaning

### History
# Bash
export HISTFILE="$XDG_CONFIG_HOME/history/bash_history"
# Mysql
export MYSQL_HISTFILE="$XDG_CONFIG_HOME/history/mysql_history"
# Do not store less history
export LESSHISTFILE="-"

#config files
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
