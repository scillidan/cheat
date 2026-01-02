# [yay](https://github.com/Jguer/yay)

## install

```sh
# Enable [archlinuxcn]. Refer to https://www.archlinuxcn.org/archlinux-cn-repo-and-mirror
sudo pacman -Syu yay
```

### From source

```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg
sudo pacman -U yay-bin*.pkg.tar.xz
yay
```
