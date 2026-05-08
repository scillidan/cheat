# [7-Zip](https://www.7-zip.org/)

## install

```sh
# Arch
sudo pacman -S 7zip
# Windows 10
scoop install 7zip
# Ubuntu 22 ARM
sudo pacman -S p7zip-full
```

## usage

### command

```sh
# With password
7z x $1 -p"<password>"

# 10m volume size
7z a -v10m <compress_dir>.7z <compress_dir>
```