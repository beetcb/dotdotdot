## My ⚬ files repo

### Distribution

manjaro-GNOME
GNOME-theme: Juno
GNOME-icon: Flatery-Dark

### Terminal

name:`gnome-terminal`
theme: `VS Code Dark+` from [Gogh](https://github.com/Mayccoll/Gogh)
shell: Z shell (Plugin management: Zplug)
shell prompt: Pure
editor: neovim (Plugin management: Vim Plug)
+ls: colorls

### XDG

> I use XDG to keep my \$HOME clean

![$home](https://i.imgur.com/SX9Y7nt.png)

### And... some compromise for (npm zsh...)

```sh
# set basic environment variables
# npm: `npm config ls -l | grep /` > ensure env settings
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm

# zsh related
## enhancd
export ENHANCD_DIR=XDG_CACHE_HOME/enhancd
## zsh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
## zplug
export ZPLUG_HOME=$XDG_CONFIG_HOME/zplug
```

### Installation (3 simple steps)

```sh
git clone https://github.com/beetcb/dotfiles.git
cd dotfiles
./install
```
