# [rsync](https://github.com/RsyncProject/rsync)

## install

```sh
# Arch
sudo pacman -S rsync
# Windows 10
scoop install cwrsync
```

## usage

```sh
# Update nvim config from ArchWSL to Windows
rsync -r ~/.config/nvim/ /mnt/c/Users/User/AppData/Local/nvim --include={".*"} --exclude={"lazy-lock.json"}
```

## reference

- #document [rsync](https://download.samba.org/pub/rsync/rsync.1)

## resource

### cache

- #Windows [cwRsync](https://itefix.net/cwrsync)