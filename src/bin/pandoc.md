# [Pandoc](https://pandoc.org/)

## install

```sh
# Arch
sudo pacman -S pandoc-cli
# Windows 10
scoop install pandoc
```

## usage

```sh
# Convert a reStructuredText (RST) file to Markdown format
pandoc "$1" -f rst -t markdown -o "_output.md"
```
