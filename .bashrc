#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[35m\]🞂🞂\u@\h \W $ \[\033[00m\]'

alias ..='cd ..'
alias ~='cd ~'
alias qtilecfg='vim ~/.config/qtile/config.py'
alias alacfg='vim ~/.config/alacritty/alacritty.yml'
alias ls='exa --group-directories-first'
alias df='df -h'
alias free='free -h'
alias wifilist='nmcli device wifi list'
