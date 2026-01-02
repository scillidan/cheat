# [Translate Shell](https://github.com/soimort/translate-shell)

## install

```sh
sudo pacman -S translate-shell
```

## config

```sh
mkdir ~/.config/translate-shell
vim ~/.config/translate-shell/init.trans
```

```
{
	:translate-shell "0.9.0"
	:verbose         false
	:show-original   false
	:hl              "en"
	:tl              ["zh"]
	:engine          "bing"
}
```
