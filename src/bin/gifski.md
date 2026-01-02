# [Gifski](https://gif.ski)

## install

```sh
# Arch
sudo pacman -S gifski
# Windows 10
scoop install gifski
```

## usage

```sh
# Optimize GIF
gifski -o _opti.gif "$input_file"

# Optimize GIF with special width, height, and fps
gifski --width 600 --height 600 --fps 10 -o _opti.gif "$input_file"

# Optimize GIF with special quality, width
gifsicle -O3 --lossy=80 --resize-width 600 "$input_file" -o _opti.gif
```
