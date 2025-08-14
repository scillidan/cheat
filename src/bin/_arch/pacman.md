# [Pacman](https://pacman.archlinux.page)

## install

[^1] [^2]

```sh
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo vim /etc/pacman.d/mirrorlist
```

```
Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
```

```sh
sudo vim /etc/pacman.conf
```

```
[archlinuxcn]
Server = https://repo.archlinuxcn.org/$arch
```

```sh
# Default
# sudo pacman -Sy archlinux-keyring
# sudo pacman-key --init
# sudo pacman-key --populate archlinux
# Enable archlinuxcn
sudo pacman -Sy archlinuxcn-keyring
sudo pacman-key --init
sudo pacman-key --populate
```

## usage

[^3]

```sh
# Refreshes the package database and upgrades all installed packages.
# export http_proxy=your_proxy:<port>
# export https_proxy=your_proxy:<port>
pacman -Syyu
# unset http_proxy
# unset https_proxy
```

```sh
# Additional tools for pacman.
sudo pacman -S pacman-contrib
```

```sh
# Removes older versions of packages from the cache, keeping only the two most recent versions for each one.
sudo paccache -rk 2
```

## resource

### mark

- [Fuzzy-pkg-finder](https://github.com/ericlay/fuzzy-pkg-finder)

### cache

- [pac](https://github.com/Twix53791/pac)

[^1] [USTC Mirror Help - Arch Linux](https://mirrors.ustc.edu.cn/help/archlinux.html)
[^2] [Arch Linux 中文社区仓库](https://www.archlinuxcn.org/archlinux-cn-repo-and-mirror/)
[^3] [10 Things You MUST DO After Installing Arch Linux (2023)](https://www.youtube.com/watch?v=odgD_RdJjCU)
