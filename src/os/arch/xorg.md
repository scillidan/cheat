# [Xorg](https://wiki.archlinux.org/title/Xorg)

## [Xinit](https://wiki.archlinux.org/title/Xinit)

```sh
vim .xinitrc
```

```
session=${1:-xfce}

case $session in
	xfce|xfce4        ) exec startxfce4;;
	i3|i3wm           ) exec i3;;
	*                 ) exec $1;;
sac
```

```sh
startx ~/.xinitrc <xfce/i3/*>
```

## [xprofile](https://wiki.archlinux.org/title/Xprofile)

```sh
sudo pacman -S xorg-xev
xev
# Get your keyboard key's keycode
```

## reference

- [What is ".xsession" for?](https://unix.stackexchange.com/questions/47359/what-is-xsession-for)
