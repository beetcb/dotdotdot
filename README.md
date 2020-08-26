## My ⚬ files repo

### Distribution

Artix-linux
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

```shell
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

```shell
git clone https://github.com/beetcb/dotfiles.git
cd dotfiles
./install
```

### addition (for mainland environment)
- /etc/pacman.conf
```shell
[archlinuxcn]
SigLevel = Never
Include = /etc/pacman.d/archlinuxcn
```

- /etc/panman.d/archlinuxcn
```shell
## 腾讯云 (上海) (ipv4, https)
## Added: 2018-11-23
Server = https://mirrors.cloud.tencent.com/archlinuxcn/$arch

## 阿里云 (Global CDN) (ipv4, http, https)
## Added: 2020-07-03
Server = https://mirrors.aliyun.com/archlinuxcn/$arch

## 重庆大学 (重庆) (ipv4, http, https)
Server = https://mirrors.cqu.edu.cn/archlinuxcn/$arch

## 网易 (浙江杭州) (ipv4, http, https)
Server = https://mirrors.163.com/archlinux-cn/$arch

## 清华大学 (北京) (ipv4, ipv6, http, https)
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch

## 中国科学技术大学 (安徽合肥) (ipv4, ipv6, http, https)
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch

## 浙江大学 (浙江杭州) (ipv4, ipv6, http, https)
## Added: 2017-06-05
Server = https://mirrors.zju.edu.cn/archlinuxcn/$arch
```

