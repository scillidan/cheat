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
newsboat -i <your>.opml
newsboat
```

## reference

- #document [Newsboat](https://newsboat.org/releases/2.10/docs/newsboat.html)

## resource

### cache

- [link-handler](https://github.com/mrdotx/link-handler)

[^1]: [ArchWiki - Newsboat](https://wiki.archlinux.org/title/Newsboat)
