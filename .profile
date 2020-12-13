# Profile file runs on login, setting environmental variables.

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Adding local scripts file to PATH
export PATH="$PATH:$HOME/.local:$HOME/.local/bin"

# Default programs:
export EDITOR="nvim"
export VISUAL="nvim"
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
# move node history
export NODE_REPL_HISTORY="$XDG_CONFIG_HOME/history/node_history"
# move Xauthority (!!) Breaks lightdm
# export XAUTHORITY="$XDG_CONFIG_HOME/Xauthority"
# move npm directory
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
# move atom directory
export ATOM_HOME="$XDG_DATA_HOME/atom"
# move java/fonts directory
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
# move ICEauthority
export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"

#config files
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
