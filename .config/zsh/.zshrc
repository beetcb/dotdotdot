#!/bin/sh

# *ZSH: separate alias
[ -f $XDG_CONFIG_HOME/zsh/.zsh_aliases ] && . $XDG_CONFIG_HOME/zsh/.zsh_aliases

# *ZSH: history
SAVEHIST=100
HISTFILE=$XDG_CONFIG_HOME/zsh/.zsh_history

# proxy setting
export hostIP=`grep -oP  "(\d+\.)+(\d+)" /etc/resolv.conf`
sed -i "113c http $hostIP 11223" $XDG_CONFIG_HOME/proxychains/proxychains.conf
alias px='proxychains4'

# propmt 
eval "$(starship init zsh)"
