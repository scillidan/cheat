# [Newsboat](https://github.com/newsboat/newsboat)

## install

```sh
sudo pacman -S newsboat
```

## config

[^1]

```sh
mkdir ~/.config/newsboat
vim ~/.config/newsboat/config
```

```
include /usr/share/doc/newsboat/contrib/colorschemes/plain
```

```sh
vim ~/.config/newsboat/urls
```

```
https://hnrss.org/newest
```

## usage

```sh
newsboat
```

## reference

- #document [Newsboat](https://newsboat.org/releases/2.10/docs/newsboat.html)

[^1]: [ArchWiki - Newsboat](https://wiki.archlinux.org/title/Newsboat)
