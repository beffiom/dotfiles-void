#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.

#aliases
alias logout='prompt "Logout?" "kill -9 -1"'
alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -A"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ytd="youtube-dl --add-metadata --embed-subs -i -o '[%(uploader)s] %(title)s.%(ext)s'"
alias da="youtube-dl --add-metadata -i -o '%(title)s.%(ext)s' -x -f bestaudio/best"
alias vpu='doas xbps-install -u'
alias vpi='doas xbps-install'
alias vpr='doas xbps-remove -RyfOo'
alias vpq='doas xbps-query --regex -v'
alias bt-start='pactl load-module module-bluetooth-discover; pactl load-module module-bluetooth-policy; doas sv restart bluetoothd'
alias file-metadata="for file in *; do mkvpropedit "$file" -s title=$filename; done"

#vi mode
set -o vi

# bind ctrl-l to clear
bind -x '"\C-l":clear'
