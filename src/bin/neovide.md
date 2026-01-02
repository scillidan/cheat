# [Neovide](https://github.com/neovide/neovide)

> 
This is a simple graphical user interface for Neovim (an aggressively refactored and updated Vim editor). Where possible there are some graphical improvements, but functionally it should act like the terminal UI. [neovide/neovide]

> 这是一个简单的Neovim图形用户界面（一个经过激进重构和更新的Vim编辑器）。在可行的情况下进行了一些图形改进，但在功能上应该像终端用户界面一样运行。 [neovide/neovide]

## install

```sh
# Arch 
sudo pacman -S neovide
# Windows 10
scoop install neovide
```

## config

[^1]

```sh
# Arch
mkdir ~/.config/neovide
vim ~/.config/neovide/config.toml
# Windows 10
mkdir %APPDATA%\neovide
subl %APPDATA%\neovide\config.toml
```

## usage

### command

```sh
# Launch Neovide with specific settings
neovide --size=1250x720 --frame none --no-tabs --wsl archwsl

# Unrecommended method to connect to a server with Neovide
ssh <username>@<your_host> -L 1234:0.0.0.0:1234 -- /home/<username>/.local/bin/nvim --headless --listen 0.0.0.0:1234
neovide --server <your_host>:1234
```

## reference

- [Neovide - Configuration](https://neovide.dev/configuration.html)
- [Run Neovide on remote SSH system](https://github.com/neovide/neovide/discussions/2853)

[^1]: [Config File - Neovide](https://neovide.dev/config-file.html)

## annex

- #dotfiles [neovide/](https://github.com/scillidan/dotfiles/tree/main/.config/neovide)
- [_neovide.sh](https://github.com/scillidan/Shell/blob/main/opt/_neovide.sh)
