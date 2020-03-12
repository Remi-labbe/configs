#
# ~/.bashrc
#

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#setting the shell prompt
PS1='\[\033[35m\]\u@\h \W $ \[\033[00m\]'
