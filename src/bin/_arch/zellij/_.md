# [Zellij](https://github.com/zellij-org/zellij)

## install

```sh
sudo pacman -S zellij
```

## Personal do

```sh
vim ~/.zshrc
```

```sh
export ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"
export ZELLIJ_CONFIG_FILE="$HOME/.config/zellij/user.kdl"

zellij_tab_name_update() {
  if [[ -n $ZELLIJ ]]; then
    local current_dir=$PWD
    if [[ $current_dir == $HOME ]]; then
      current_dir="~"
    else
      current_dir=${current_dir##*/}
    fi
      command nohup zellij action rename-tab $current_dir >/dev/null 2>&1
      fi
}
zellij_tab_name_update
chpwd_functions+=(zellij_tab_name_update)

alias zw='zellij --layout=swap'
```

## reference

- [Configuration](https://zellij.dev/documentation/configuration)
- [Configuration - Options](https://zellij.dev/documentation/options)
- [Configuration - Tokyo Night Light](https://zellij.dev/documentation/theme-gallery#tokyo-night-light)
- [Layouts](https://zellij.dev/documentation/layouts)
- [default.kdl](https://github.com/zellij-org/zellij/blob/main/zellij-utils/assets/config/default.kdl)
- [Does zellij support changing tab's name according to pane file system path automatically?](https://www.reddit.com/r/zellij/comments/10skez0/does_zellij_support_changing_tabs_name_according/)

## cross-reference

### mark

- [zjstatus.md](/bin/_arch/zellij/zjstatus.md)

## resource

### cache

- [harpoon](https://github.com/Nacho114/harpoon)
- [jbz](https://github.com/nim65s/jbz)
- [Monocle](https://github.com/imsnif/monocle)
- [Multitask](https://github.com/imsnif/multitask)
- [room](https://github.com/rvcas/room)
- [zellij-forgot](https://github.com/karimould/zellij-forgot)
