# [AutoTrace](https://github.com/autotrace/autotrace)

## install

```sh
# Arch
yay -S --noconfirm autotrace
```

## usage

```sh
magick convert "$1" -define bmp:format=bmp3 _temp.bmp && autotrace -output-file _autotrace.svg -input-format bmp -despeckle-level <level> -color-count <num> _temp.bmp
```
