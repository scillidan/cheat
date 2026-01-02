# [Pegasus Frontend](https://github.com/mmatyas/pegasus-frontend)

> Pegasus is a graphical frontend for browsing your game library and launching all kinds of emulators from the same place. It's focusing on customizability, cross platform support (including embedded) and high performance. [mmatyas/pegasus-frontend]

> Pegasus是一个图形前端，用于浏览您的游戏库并从同一个地方启动各种模拟器。它专注于可定制性、跨平台支持（包括嵌入式设备）和高性能。 [mmatyas/pegasus-frontend]

## install

```sh
# Arch
yay -S --noconfirm pegasus-frontend-git
# Windows 10
scoop install https://raw.githubusercontent.com/Calinou/scoop-games/refs/heads/master/bucket/pegasus.json
gsudo scoop install k-lite-codec-pack-basic-np
```

## config

1. Get `pegasus-fe*.zip` from releases of [Pegasus Frontend](https://github.com/mmatyas/pegasus-frontend).
2. Decompress it to `pegasus-fe/`.
3. Get portable [RetroArch](https://www.retroarch.com/index.php?page=platforms), liked the `Download (64bit)`.
4. Decompress it to `pegasus-fe/RetroArch/`.
5. Get [K-Lite Codec Pack Basic](https://codecguide.com/download_k-lite_codec_pack_basic.htm).
6. Install it.

1. See [天马G PC+安卓双平台 精简Rom整合包 + 8大主题功能演示教程](https://www.bilibili.com/video/BV1vg4y1V7TB).
2. Download the `跳坑者联盟 PegasusG v1.2 完整版`.
3. Goto `【1】安装程序（安卓+PC）\【PC】专用安装包`.
4. Decompress `【Win 10及以上专用】天马G_PC主程序 v1.2 230605.7z`.
5. In `RetroArch`, copy these dirs to `pegasus-fe/RetroArch/`:
	 ```
	 cheats
	 config
	 cores
	 downloads
	 system
	 ```
6. In `config`, copy `*.txt` to `pegasus-fe/config/`.
7. Goto `【2】数据文件（安卓+PC）\【1】基础包_110GB`.
8. Decompress `基础包_110GB Roms.zip.*` to `pegasus-fe/Roms`.
9. Goto `【3】数据列表（安卓+PC）\【PC】metadata数据列表`.
10. Replace `pegasus-fe/Roms/**/metadata.pegasus.txt` with them.
11. If don't lanch game in pegasus-fe, check the line that write `launch: ...` of `metadata.pegasus.txt`. See more on [Metadata files](https://pegasus-frontend.org/docs/user-guide/meta-files/).
12. Clone some themes from [Pegasus Theme Gallery](https://pegasus-frontend.org/tools/themes) to `pegasus-fe\config\themes`.
13. Lanch `pegasus-fe.exe`.

```sh
subl roms/<platform>/metadata.pegasus.txt
```

```
# Windows 10
launch: "{env.PEGASUS_HOME}\RetroArch\retroarch.exe" -L "{env.PEGASUS_HOME}\RetroArch\cores\flycast_libretro.dll" "{file.path}"
```

```
# Arch
launch: "/home/<user>/RetroArch/retroarch" -L "/home/<user>/RetroArch/cores/flycast_libretro.so" "{file.path}"
```

## reference

- [Pegasus Tools Collection](https://pegasus-frontend.org/tools/)
- [Skyscraper](https://github.com/muldjord/skyscraper)
- [Retro BIOSes](https://github.com/Abdess/retroarch_system)
- [RetroArch asset server](https://github.com/NickHeap2/retroarch-asset-server)

## resource

### mark

- #theme [Sleipnir](https://github.com/y-muller/retromega-sleipnir)

### cache

- #theme [Flixnet theme for Pegasus](https://github.com/mmatyas/pegasus-theme-flixnet)
- #theme [Grid Micro theme for Pegasus](https://github.com/mmatyas/pegasus-theme-grid-micro)
- #theme [Pegasus Grid theme for Retroid Pocket 2](https://github.com/DFOXpro/rp2-pegasus-theme-grid)
- #theme [pegasus-theme-gpiOS](https://github.com/SinisterSpatula/pegasus-theme-gpiOS)
- #theme [RefiOS](https://github.com/eleo95/pegasus-theme-refiOS)
- #theme [Retro Mega Next](https://github.com/plaidman/retromega-next)
- #theme [Retro Mega](https://github.com/djfumberger/retromega)
- #theme [Slick theme for Pegasus](https://github.com/buzz/pegasus-theme-slick)

## annex

- [file_pegasus-g](https://github.com/scillidan/file_pegasus-g)
- [file_pegasus-g_metadata-export](https://github.com/scillidan/file_pegasus-g_metadata-export)
- [init_pegasus.bat](https://github.com/scillidan/Shell/blob/main/opt/init_pegasus.bat)
- [init_pegasus.sh](https://github.com/scillidan/Shell/blob/main/opt/init_pegasus.sh)

## appdedix

![pegasus-g](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optGame/pegasus-g.png)

- [pegasus-frontend_init_windows.mp4](https://scillidan.github.io/media_cheat/opt/pegasus-frontend_init_windows.mp4)
