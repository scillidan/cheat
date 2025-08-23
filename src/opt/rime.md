# [Rime](https://rime.im)

> Rime (from rime.im) is an open-source, highly customizable input method engine primarily designed for typing Chinese characters. It supports various Chinese input schemes such as Pinyin, Zhuyin, Cangjie, and others. Users can switch easily among different input methods and configure them to their preference using an intuitive menu system. Rime is praised for its flexibility, extensibility, and innovative design, enabling users to tailor input experiences to their unique needs. It is widely regarded as a powerful tool for efficient and elegant Chinese text input across multiple platforms.  
> In summary, Rime is a modular Chinese input method framework that offers diverse input schemes and customization, enabling smooth and personalized Chinese typing experiences. [perplexity.ai]

> Rime（来自rime.im）是一个开源、高度可定制的输入法引擎，主要设计用于输入中文字符。它支持多种中文输入方案，如拼音、注音、仓颉等。用户可以通过直观的菜单系统轻松切换不同的输入方式，并根据个人喜好进行配置。Rime因其灵活性、可扩展性和创新设计而受到赞誉，使用户能够根据独特需求调整输入体验。它被广泛视为一个强大的工具，能够在多个平台上高效优雅地输入中文文本。  
> 总之，Rime是一个模块化的中文输入法框架，提供多样的输入方案和自定义功能，实现流畅和个性化的中文输入体验。[perplexity.ai]

## install

[^1]

```sh
# Arch
sudo pacman -S fcitx5-im fcitx5-gtk fcitx5-qt fcitx5-rime
```

```sh
# Windows 10
scoop install rime
```

## config

```sh
# Arch
vim ~/.xprofile
```

```
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"
export INPUT_METHOD="fcitx"
export XIM="fcitx"
export XIM_PROGRAM="fcitx"
export SDL_IM_MODULE="fcitx"
export GLFW_IM_MODULE="ibus"
```

Then reboot.

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

[^1]: [Can't awaken the input method(fcitx5)](https://github.com/alacritty/alacritty/issues/6528)

![rime](/_image/opt/rime.png)

{% embed bilibili id="BV1gJ4m1M7Ea" loading="lazy" %}
