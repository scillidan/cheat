# [ArchWSL](https://github.com/yuk7/ArchWSL)

## install

```sh
# scoop install archwsl
wsl --install archlinux
arch
```

## `useradd` { #useradd }

```sh
passwd
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
useradd -m -G wheel -s /bin/bash <user>
passwd <user>
exit
```

```sh
arch config --default-user <user>
arch
```

## usage

### command

```sh
# Personal do
sudo pacman -Syyu \
	inetutils \
	less \
	unzip \
	wget \
	xsel
# editorconfig-checker \
```

## WSL Optionals

[^1]

### D-Bus

```sh
# sudo pacman -S dbus
sudo mkdir /run/dbus -p
sudo dbus-daemon --system
```

### systemd/systemctl

```sh
vim /etc/wsl.conf
```

```
[boot]
systemd=true
```

## reference

- [Install Arch Linux on WSL - ArchWiki](https://wiki.archlinux.org/title/Install_Arch_Linux_on_WSL)

## cross-reference

0. [arch-linux.md](/os/arch-linux/_.md)
1. [wsl.md](/os/windows10/wsl.md)
2. [pacman.md](/bin/_arch/pacman/_.md)
3. [yay.md](/bin/_arch/yay.md)
4. [openssh.md](/bin/_arch/openssh.md)
5. [tigervnc.md](/opt/_arch/tigervnc.md)

[^1]: [Known issues](https://wsldl-pg.github.io/ArchW-docs/Known-issues/)

## appdedix

![archwsl_01](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/os/archwsl_01.png)
![archwsl_02](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/os/archwsl_02.png)
