# [GPi CASE 2](https://retroflag.com/gpi_case_2.html)

> GPi CASE 2 is a handheld gaming case designed to house the Raspberry Pi Compute Module 4 (CM4). It transforms the CM4 into a portable retro gaming console resembling a Game Boy. The device includes a 3.0-inch IPS screen, a built-in 4000mAh lithium battery with USB-C charging, and various buttons including hidden rear X/Y and turbo/home buttons. It supports popular retro gaming software such as RetroPie and Recalbox, enabling users to play games from multiple retro platforms. Due to the nature of using the CM4, the GPi CASE 2 does not support using an SD card slot if the CM4 has built-in eMMC storage; instead, the storage size for games is limited to the eMMC capacity on the CM4. A "safe shutdown" script and display patches are often installed to optimize the system for this setup. The case is sold without the CM4 included, supporting various CM4 models including those with or without WiFi or eMMC.  
> In summary, GPi CASE 2 is a compact, Game Boy-inspired Raspberry Pi CM4 case for retro gaming emulation with enhanced performance over earlier versions that used Raspberry Pi Zero boards. [perplexity.ai]

> GPi CASE 2是一个手持游戏盒，旨在容纳树莓派计算模块4（CM4）。它将CM4转变为一个便携式复古游戏机，外形类似于Game Boy。该设备包括一个3.0英寸IPS屏幕、内置4000mAh锂电池（支持USB-C充电），以及包括隐藏的后面X/Y按钮和涡轮/主页按钮在内的各种按钮。它支持流行的复古游戏软件，如RetroPie和Recalbox，使用户能够玩来自多个复古平台的游戏。由于使用CM4的特性，如果CM4内置了eMMC存储，GPi CASE 2不支持使用SD卡插槽；相反，游戏的存储大小受到CM4上eMMC容量的限制。通常会安装“安全关机”脚本和显示补丁，以优化该系统的设置。该盒子销售时不包含CM4，支持包括有WiFi或无WiFi和eMMC的各种CM4型号。  
> 总之，GPi CASE 2是一个紧凑型、受到Game Boy启发的树莓派CM4机壳，旨在进行复古游戏模拟，性能优于早期使用树莓派Zero主板的版本。 [perplexity.ai]

## Choose a OS

- [Recalbox](https://www.recalbox.com/) used [ES-DE](https://gitlab.com/es-de/emulationstation-de) with [Modern](https://gitlab.com/es-de/themes/modern-es-de) theme.
- [RetroPie](https://retropie.org.uk/) used [ES-DE](https://gitlab.com/es-de/emulationstation-de) as default frontend.

## Flash OS to SD card

1. Get [SD Memory Card Formatter](https://www.sdcard.org/downloads/formatter/). Use it to format SD card.
2. Get [Raspberry Pi Imager](https://www.raspberrypi.com/software/).
3. Raspberry Pi Imager:
	1. Raspberry Pi Device → Raspberry Pi 4
	2. 请选择需要写入的操作系统 → Emulation and game OS
	3. 储存卡 → SD card
	4. 可选配置 → 在完成后卸载磁盘 (Off)
	5. Next

## Install display patch and safe-shutdown script

1. Click `Download GPiCase2 patch` on [GPiCase2-Script](https://github.com/RetroFlag/GPiCase2-Script) to download `GPi_Case2_patch/`.
2. Decompress it to `GPi_Case2_patch/`.
3. Copy all files under `GPi_Case2_patch_<os>` to `<SD card>/`.
4. (Windows 10) Run `Install_patch.bat`.
5. Create a file `gpi.sh`:

```sh
wget -O - "https://raw.githubusercontent.com/RetroFlag/GPiCase2-Script/main/retropie_install_gpi2.sh" | sudo bash
```

## First boot

1. Insert SD card into GPi CASE 2, turn it on.
2. After first boot, you can hold a button to configure keymap. You can hold any button until it is be skipped.

## reference

- [Placing games and other resources on network shares](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#placing-games-and-other-resources-on-network-shares)
- [Arcade manager](https://github.com/cosmo0/arcade-manager)
- [RetroArch asset server](https://github.com/NickHeap2/retroarch-asset-server)
- [Renpy Documentation - Raspberry Pi](https://www.renpy.org/doc/html/raspi.html)
- [FAQ - How can I recover my RetroPie after enabling the desktop OpenGL driver?](https://retropie.org.uk/docs/FAQ/#how-can-i-recover-my-retropie-after-enabling-the-desktop-opengl-driver)

## cross-reference

### mark

- [recalbox.md](/os/recalbox.md)
- [retropie.md](/os/retropie.md)

## appdedix

[gpi-case-2_20241018.mp4](https://scillidan.github.io/media_cheat/dev/gpi-case-2_20241018.mp4)
