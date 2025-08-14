# [Wez's Terminal](https://github.com/wezterm/wezterm)

## install

```sh
# Arch
sudo pacman -S wezterm
# Windows 10
scoop install wezterm
```

## Personal do

```sh
# Windows 10
del "%SCOOP_HOME%\apps\wezterm\current\wezterm.lua"
mklink "%SCOOP_HOME%\apps\wezterm\current\wezterm.lua" "%DOTFILES_DIR%\.config\wezterm\wezterm.lua"
```

## reference

- #keymap [Wez's Terminal - Default Key Assignments](https://wezterm.org/config/default-keys.html)
- [Is it possible to show/hide a split-pane?](https://github.com/wezterm/wezterm/discussions/3779)
- [How to bind mouse right-click with Copy & Paste? (Like windows terminal)](https://github.com/wezterm/wezterm/discussions/3541)

![color_vanta](/_image/opt/wezterm/color_vanta.png)
![color_visiblue](/_image/opt/wezterm/color_visiblue.png)
![color_visibone](/_image/opt/wezterm/color_visibone.png)
