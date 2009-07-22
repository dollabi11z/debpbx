# ~/.bashrc: executed by bash(1) for non-login shells.

export PS1='\[\033[01;31m\]\h\[\033[01;34m\] \[\033[01;36m\][DebPBX]\[\033[00m\] \w \$\[\033[00m\] ' 
umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

alias syslog='tail -f /var/log/syslog | loco'