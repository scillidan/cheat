# [Av1an](https://github.com/master-of-zen/Av1an)

## install

```sh
# Arch
sudo pacman -S av1an
# Cargo
cargo install --force av1an
```

## usage

```sh
av1an -i "$1" -v "--cpu-used=3 --end-usage=q --cq-level=30 --threads=8" -w 10 --target-quality 95 -a "-c:a libopus -b:a 192k -ac 2" -l "_av1en.log" -o "_av1en.mp4"
```
