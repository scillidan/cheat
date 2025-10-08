# [Alacritty](https://alacritty.org)

> Alacritty is a modern terminal emulator that comes with sensible defaults, but allows for extensive configuration. By integrating with other applications, rather than reimplementing their functionality, it manages to provide a flexible set of features with high performance. The supported platforms currently consist of BSD, Linux, macOS and Windows.  
> The software is considered to be at a beta level of readiness; there are a few missing features and bugs to be fixed, but it is already used by many as a daily driver. [alacritty.org]

> Alacritty是一个现代终端模拟器，提供合理的默认设置，但允许用户进行广泛的配置。通过与其他应用集成而不是重新实现其功能，它能够提供一套灵活且高性能的功能。目前支持的操作平台包括BSD、Linux、macOS和Windows。  
> 该软件被认为处于测试阶段；还缺少一些功能和待修复的错误，但已经被许多人作为日常工作工具使用。 [alacritty.org]

## install

```sh
# Arch
sudo pacman -S alacritty
# Windows 10
scoop install alacritty
```

```sh
# Preview image in yazi
sudo pacman -S ueberzugpp
```

## setting

[^1]

```sh
# Arch
vim $HOME/.config/alacritty/alacritty.toml
# Windows 10
subl %APPDATA%\alacritty\alacritty.toml
```

## reference

- #document [Alacritty](https://alacritty.org/config-alacritty.html)
- (Windows 10) [How can I configure alacritty to work with MSYS2?](https://github.com/alacritty/alacritty/issues/3301#issuecomment-753320506)
- [An Example and Concise Guide to Alacritty Configuration through TOML](https://convoluted.bearblog.dev/alacritty-config-example-guide/)

[^1]: [Config - Alacritty](https://alacritty.org/config-alacritty.html)