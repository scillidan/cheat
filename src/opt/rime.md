# [Rime](https://rime.im)

## install

[^1]

```sh
# Arch
sudo pacman -S fcitx5-im fcitx5-rime
```

```sh
# Windows 10
scoop install rime
```

## config

```sh
# Arch
mkdir ~/.config/environment.d/
vim ~/.config/environment.d/im.conf
```

```
# Fix fcitx problem
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus
```

- Xfce → Setttings → Fcitx 5 Configuration
	- Input Method → Available Input Method → Select `Rime` → Move to left.
	- Global Options → Trigger Input Method → `Shift` → Apply.

## Personal do

```sh
# Arch
mkdir -p ~/.local/share/fcitx5/rime
mkdir -p ~/Usr/Source/rime
cd ~/Usr/Source/rime
git clone --depth=1 https://github.com/iDvel/rime-ice
```

```sh
# Windows 10
mkdir "%USERPROFILE%\Usr\Source\rime"
cd "%USERPROFILE%\Usr\Source\rime"
git clone --depth=1 https://github.com/iDvel/rime-ice
```

## reference

- #document [Fcitx5 - ArchWiki](https://wiki.archlinux.org/title/Fcitx5)
- #document [Rime - ArchWiki](https://wiki.archlinux.org/title/Rime)
- #example [symbols.yaml - rime/rime-prelude](https://github.com/rime/rime-prelude/blob/master/symbols.yaml)
- #example [weasel_dev.md - expoli/rime-config](https://github.com/expoli/rime-config/blob/master/weasel_dev.md)

## cross-reference

- #script [init_rime.bat](https://github.com/scillidan/Shell/blob/main/opt/init_rime.bat)
- #script [init_rime.sh](https://github.com/scillidan/Shell/blob/main/opt/init_rime.sh)

## resource

- [雾凇拼音](https://github.com/iDvel/rime-ice)
- [Rime English输入方案](https://github.com/sdadonkey/rime-english)
- [rime-easy-en](https://github.com/BlindingDark/rime-easy-en)
- [Rime-Lua-GoogleTranslate](https://github.com/JACKCHAN000/Rime-Lua-GoogleTranslate)

[^1]: [10. 安装输入法 - archlinux简明指南](https://arch.icekylin.online/guide/rookie/desktop-env-and-app#_10-%E5%AE%89%E8%A3%85%E8%BE%93%E5%85%A5%E6%B3%95)

![rime](/_image/opt/rime.png)
