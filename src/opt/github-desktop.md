# [GitHub Desktop](https://github.com/desktop/desktop)

## install

[^1]

```sh
# Arch
yay -R github-desktop-bin
rm -rf ~/.config/GitHub\ Desktop
sudo pacman -S gnome-keyring
yay -S --noconfirm github-desktop-bin
```

## config

- Github Desktop > File > Options
	- Integrations
		- External editor
		- Shell

[^1]: [The name is not activatable · Issue #18121 · desktop/desktop](https://github.com/desktop/desktop/issues/18121)
