## My ⚬ files repo

### Installation (3 simple steps)

```shell
git clone https://github.com/beetcb/dotfiles.git
cd dotfiles
./install
```

### Distribution

Arch-linux[WSL 2]

### Terminal

- name:`windows terminal`
- theme: `dracula`
- shell: `Z shell` (Plugin management: Zplug)
- shell prompt: `Pure`
- editor: `neovim` (Plugin management: Vim Plug)
- +ls: `colorls`
- font: `Hack NF`

### XDG

> I use XDG to keep my \$HOME 📁 clean

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

### WSL Specific

```shell
###################  WSL  ##################
if [[ $(uname -r) == *microsoft* ]]; then
  # powershell
  alias wps="powershell.exe"
  alias adb="wps abd"
  alias scoop="wps scoop"
  # ...

  # launch vscode(windows) => Abandon vscode wsl plugin
  code()
  {
    powershell.exe code $(wslpath -w $1) 2>/dev/null
    echo "launching vs code 👌"
  }
fi
```

### Own script

`$HOME/FiddlingScript`

```shell
# load all of my own script(no privileges need)
fsload()
{
  DIR=$HOME/FiddlingScript

  \ls -1 $DIR > log
  while IFS= read -r line; do
    echo "loading your script: fs$line 🙌"
    alias "fs$line"="zsh $DIR/$line"
  done < log
  rm -f log

  echo "done ! 👏 "
}
```

### ~~addition (for China mainland environment)~~ => discarded

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
