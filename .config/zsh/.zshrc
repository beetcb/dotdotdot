#!/bin/sh

source $XDG_CONFIG_HOME/zplug/init.zsh

# *PURE: as zsh theme
autoload -U promptinit; promptinit
prompt pure
PROMPT='%(?.%F{magenta}△.%F{red}▲)%f '


# *ZSH: separate alias 
[ -f $XDG_CONFIG_HOME/zsh/.zsh_aliases ] && . $XDG_CONFIG_HOME/zsh/.zsh_aliases

# *ZSH: history
SAVEHIST=100
HISTFILE=$XDG_CONFIG_HOME/zsh/.zsh_history

# *Colorls: env
source $(dirname $(gem which colorls))/tab_complete.sh
export PATH=~/.gem/ruby/2.7.0/bin:$PATH

# *ZPLUG: Plugins
zplug "plugins/git",   from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/enhancd"
zplug "plugins/vi-mode",  from:oh-my-zsh

# proxy setting
export hostIP=`grep -oP  "(\d+\.)+(\d+)" /etc/resolv.conf`
sed -i "115c http $hostIP 7890" $XDG_CONFIG_HOME/proxychains/proxychains.conf
alias px='proxychains4'

# *ZPLUG: check before install
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load
