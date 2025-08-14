# [espanso](https://github.com/espanso/espanso)

## install

```sh
# Arch
yay -S --noconfirm espanso-x11-bin
# Windows 10
scoop install espanso
```

## Personal do

```sh
# Windows 10
rmdir /S /Q "%SCOOP_HOME%\apps\espanso\current\.espanso\config"
mklink /J "%SCOOP_HOME%\apps\espanso\current\.espanso\config" "%DOTFILES_DIR%\.config\espanso\config"
rmdir /S /Q "%SCOOP_HOME%\apps\espanso\current\.espanso\match"
mklink /J "%SCOOP_HOME%\apps\espanso\current\.espanso\match" "%DOTFILES_DIR%\.config\espanso\match"
```

## reference

- #document [Espanso](https://espanso.org/docs/get-started/)
- [Variables](https://espanso.org/docs/matches/variables/)
