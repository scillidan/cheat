# [Lazygit](https://github.com/jesseduffield/lazygit)

## install

```sh
# Arch
sudo pacman -S lazygit
# Windows 10
scoop install lazygit
```

## Personal do

```sh
# Windows 10
del "%LOCALAPPDATA%\lazygit\config.yml"
mklink "%LOCALAPPDATA%\lazygit\config.yml" "%DOTFILES_DIR%\.config\lazygit\config.yml"
```
