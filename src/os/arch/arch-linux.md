# [Arch Linux](https://archlinux.org)

## pre-install

- [了解 archlinux](https://arch.icekylin.online/guide/prepare/understand.html)
- (Optional) [安装前的准备](https://arch.icekylin.online/guide/rookie/pre-install.html)

## install

[^1]

```sh
systemctl stop reflector.service
```

```sh
timedatectl set-ntp true
```

```sh
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
vim /etc/pacman.d/mirrorlist
```

```
Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
```

```sh
lsblk
cfdisk /dev/nvme?n1
```

```
size        | type             | comment
256M        | EFI System       | /boot
32G*0.6=18G | Linux Swap       |
free        | Linux filesystem | /
```

```sh
mkfs.fat -F32 /dev/nvme?n1p?
mkswap /dev/nvme?n1p?
mkfs.btrfs -L Arch /dev/nvme?n1p?
```

```sh
mount -t btrfs -o compress=zstd /dev/nvmex?1p? /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
umount /mnt
```

```sh
mount -t btrfs -o subvol=/@,compress=zstd /dev/nvme?n1p? /mnt
mkdir /mnt/home
mount -t btrfs -o subvol=/@home,compress=zstd /dev/nvme?n1p? /mnt/home
mkdir -p /mnt/boot
# Mount EFI
mount /dev/nvme?n1p? /mnt/boot
# Mount Linux Swap
swapon /dev/nvmexn1pn
```

```sh
pacstrap /mnt base base-devel linux linux-firmware btrfs-progs
```

```sh
pacstrap /mnt networkmanager vim sudo zsh zsh-completions
```

```sh
genfstab -U /mnt > /mnt/etc/fstab
```

```sh
arch-chroot /mnt
```

[^2]

```sh
vim /etc/hostname
```

```
arch
```

```sh
vim /etc/hosts
```

```
# Add
127.0.1.1	arch.local arch
```

[^3]

```sh
# timedatectl set-timezone Asia/Shanghai
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc
```

[^4] [^5]

```sh
vim /etc/locale.gen
```

```
# Find and uncomment
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8
```

```sh
locale-gen
```

```sh
vim /etc/locale.conf
```

```
LANG=en_US.UTF-8
```

```sh
passwd root
```

```sh
useradd -m -G wheel -s /bin/bash <user>
passwd <user>
EDITOR=vim visudo
```

```
# Uncomment
%wheel ALL=(ALL:ALL) ALL
```

```sh
# pacman -S intel-ucode # Intel
pacman -S amd-ucode # AMD
pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=ARCH
vim /etc/default/grub
```

```
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=5 nowatchdog"
```

```sh
grub-mkconfig -o /boot/grub/grub.cfg
```

```sh
exit
umount -R /mnt
shutdown -h now
```

## Personal do

```sh
sudo pacman -S \
	ark
	# autotiling
	# neomutt
	# restic
```

```sh
sudo pacman -Rns \
	xfce4-dict \
	xfce4-terminal \
	xfce4-screenshooter \
	xfce4-clipman-plugin \
	ristretto
	# xfce4-notifyd \
	# xfwm4 \
```

## reference

- [Desktop entries](https://wiki.archlinux.org/title/desktop_entries)
- [My workstation configs](https://github.com/bibjaw99/workstation)
- [vim_styled](https://github.com/qxb3/conf/tree/vim_styled)
- [dotfiles-x220](https://github.com/diffficult/dotfiles_220)

## cross-reference

1. [archwsl.md](/os/arch/archwsl.md)
2. [pacman.md](/bin/_arch/pacman.md)
3. [flatpak.md](/bin/_arch/flatpak.md)
4. [pipewire.md](/opt/_arch/pipewire.md)
5. [bluez.md](/opt/_arch/bluez.md)
6. [openssh.md](/bin/_arch/openssh.md)
7. [tigervnc.md](/opt/_arch/tigervnc.md)
8. [firewalld.md](/bin/_arch/firewalld.md)
9. [mount.md](/bin/_arch/mount.md)

- #arch [ark](opt/_arch/ark.md)
- #arch [auto-cpufreq.md](/opt/_arch/auto-cpufreq.md)
- #arch [dunst.md](/opt/_arch/dunst.md)
- #arch [flameshot.md](/opt/_arch/flameshot.md)
- #arch [gnupg.md](/bin/_arch/gnupg.md)
- #arch [keyd.md](/bin/_arch/keyd.md)
- #arch [lightdm.md](/opt/_arch/lightdm.md)
- #arch [lutris.md](/optGame/lutris.md)
- #arch [networkmanager.md](/bin/_arch/networkmanager.md)
- #arch [nsxiv.md](/opt/_arch/nsxiv.md)
- #arch [ocrdesktop.md](/opt/_arch/ocrdesktop.md)
- #arch [pass.md](/bin/_arch/pass.md)
- #arch [preload.md](/opt/_arch/preload.md)
- #arch [rofi.md](/opt/_arch/rofi/rofi.md)
- #arch [sdcv.md](/bin/_arch/sdcv.md)
- #arch [steam.md](/optGame/steam.md)
- #arch [texlive.md](/bin/_arch/texlive.md)
- #arch [xfce.md](/opt/_arch/xfce/xfce.md)
- #arch [xone.md](/optGame/_arch/xone.md)
- #arch [zathura.md](/opt/_arch/zathura.md)
- [abogen.md](/opt/abogen.md)
- [alacritty.md](/opt/alacritty.md)
- [audacity.md](/opt/audacity.md)
- [calibre.md](/opt/calibre/calibre.md)
- [chainner.md](/opt/chainner.md)
- [clamav.md](/bin/clamav.md)
- [darktable.md](/opt/darktable.md)
- [doggo.md](/bin/doggo.md)
- [dufs.md](/bin/dufs.md)
- [dupeguru.md](/opt/dupeguru.md)
- [etcher.md](/opt/etcher.md)
- [exifcleaner.md](/opt/exifcleaner.md)
- [ffmpeg.md](/bin/ffmpeg.md)
- [github-desktop.md](/opt/github-desktop.md)
- [goldendict.md](/opt/goldendict.md)
- [gpodder.md](/opt/gpodder.md)
- [handbrake.md](/opt/handbrake.md)
- [imagemagick.md](/bin/imagemagick.md)
- [kdenlive.md](/opt/kdenlive.md)
- [libreoffice.md](/opt/libreoffice.md)
- [librewolf.md](/opt/Browser/librewolf.md)
- [localsend.md](/opt/localsend.md)
- [losslesscut.md](/opt/losslesscut.md)
- [lrcget.md](/opt/lrcget.md)
- [mediainfo.md](/opt/mediainfo.md)
- [mkvtoolnix.md](/opt/mkvtoolnix.md)
- [mp3gain.md](/opt/mp3gain.md)
- [mpv.md](/opt/mpv/mpv.md)
- [mupdf.md](/opt/mupdf.md)
- [musescore.md](/opt/musescore.md)
- [obs-studio.md](/opt/obs-studio.md)
- [obsidian.md](/opt/obsidian/obsidian.md)
- [oxipng.md](/bin/oxipng.md)
- [pdfarranger.md](/opt/pdfarranger.md)
- [pngquant.md](/bin/pngquant.md)
- [pureref.md](/opt/pureref.md)
- [pro.md](/bin/pro.md)
- [pyglossary.md](/opt/pyglossary.md)
- [qemu.md](/opt/qemu.md)
- [qdiskinfo.md](/opt/qdiskinfo.md)
- [quiterss.md](/opt/quiterss.md)
- [raspberry-pi-imager.md](/opt/raspberry-pi-imager.md)
- [rembg.md](/bin/rembg.md)
- [rime.md](/opt/rime.md)
- [scc.md](/bin/scc.md)
- [shotcut.md](/opt/shotcut.md)
- [sigil.md](/opt/sigil.md)
- [slidev.md](/bin/slidev.md)
- [sqlitebrowser.md](/src/opt/sqlitebrowser.md)
- [stirling-pdf.md](/opt/stirling-pdf.md)
- [sublime-text.md](/opt/sublime-text/sublime-text.md)
- [tageditor.md](/opt/tageditor.md)
- [tagspaces.md](/opt/tagspaces.md)
- [thunderbird.md](/opt/thunderbird.md)
- [upscayl.md](/opt/upscayl.md)
- [ventoy.md](/opt/ventoy.md)
- [video-compare.md](/opt/video-compare.md)
- [weixin.md](/opt/weixin.md)
- [wezterm.md](/opt/wezterm.md)
- [wine](/optGame/wine.md)
- [xnconvert.md](/opt/xnconvert.md)
- [yoga-image-optimizer.md](/opt/yoga-image-optimizer.md)
- [yt-dlp.md](/bin/yt-dlp.md)
- [zeal.md](/opt/zeal.md)

## troubleshoot

### Bluetooth service was skipped because of an unmet condition check ...

[^6]

```sh
sudo modprobe bluetooth
sudo systemctl restart bluetooth
systemctl status bluetooth
```

[^1]: [archlinux 基础安装](https://arch.icekylin.online/guide/rookie/basic-install)
[^2]: [Set the hostname](https://wiki.archlinux.org/title/Network_configuration#Set_the_hostname)
[^3]: [System time](https://wiki.archlinux.org/title/System_time)
[^4]: [Localization](https://wiki.archlinux.org/title/Localization)
[^5]: [Localization/Simplified Chinese](https://wiki.archlinux.org/title/Localization/Simplified_Chinese)
[^6]: [Bluetooth not working on computer](https://www.linuxquestions.org/questions/linux-hardware-18/bluetooth-not-working-on-computer-4175724971/)

![arch-linux-arm_ucon](/_image/os/arch-linux-arm_ucon.png)
![arch-linux](/_image/os/arch-linux.png)
