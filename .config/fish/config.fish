set fish_greeting
set TERM "xterm-256color"
set EDITOR "nvim"

alias pac='sudo pacman'

alias v='nvim'
alias mkdir='mkdir -pv'
alias cat='bat'

alias ls='exa --color=always --group-directories-first'
alias df='df -h'
alias free='free -h'
alias du='du -hs'
alias rm='rm -v'

alias wifilist='nmcli device wifi list'
alias startsrv='sudo systemctl start httpd.service mariadb.service'
alias stopsrv='sudo systemctl stop httpd.service mariadb.service'
