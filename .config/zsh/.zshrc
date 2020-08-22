source /home/beet/.config/zplug/init.zsh

# use pure as zsh theme
autoload -U promptinit; promptinit
prompt pure
PROMPT='%(?.%F{magenta}△.%F{red}▲)%f '

# separate alias 
if [ -f /home/beet/.config/zsh/.zsh_aliases ]; then
      . /home/beet/.config/zsh/.zsh_aliases
fi

# zsh history
SAVEHIST=100
HISTFILE=/home/beet/.config/zsh/.zsh_history

# colorls
source $(dirname $(gem which colorls))/tab_complete.sh
export PATH=/home/beet/.gem/ruby/2.7.0/bin:$PATH

# zplug  Plugins
zplug "plugins/git",   from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/enhancd"
zplug "plugins/vi-mode",  from:oh-my-zsh


# check before install
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

