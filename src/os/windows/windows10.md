# Windows 10

## boot

1. 现在安装 → 我没有产品密钥 → Windows 10 专业版 → 自定义：仅安装Windows（高级） → 选择目标驱动器 → 格式化 → 新建
2. 我没有Internet连接
3. 继续执行有线设置
4. 使用脱机账户 → 不填写密码
5. 运行 → `control userpasswords2` → 属性 → 要使用本计算机，用户必须输入用户名和密码(Off)

## System environment 

Add into Environment:

```
EDITOR=subl
# Lib
CARGO_HOME=C:\Users\User\.cargo
CARGO_TARGET_DIR=C:\Users\User\.cargo\tmp
GOPATH=C:\Users\User\.go
GOROOT=C:\Users\User\Scoop\apps\go122\current
# GOROOT=C:\Users\User\Usr\Lib\go1.20.1
JAVA_HOME=C:\Users\User\Scoop\apps\openjdk22\current
LUA_PATH=C:\gcc-lua-install\lua-5.4.8;C:\Users\User\AppData\Roaming\luarocks\share\lua\5.4\?.lua;C:\Users\User\AppData\Roaming\luarocks\share\lua\5.4\?\init.lua
LUA_CPATH=C:\gcc-lua-install\lua-5.4.8\src;C:\Users\User\AppData\Roaming\luarocks\lib\lua\5.4\?.dll
PIPX_HOME=C:\Users\User\.pipx
PNPM_HOME=C:\Users\User\.pnpm
# By scoop
LIBCLANG_PATH=C:\Users\User\Scoop\apps\llvm\current\bin
LLVM_LIB_DIR=C:\Users\User\Scoop\apps\llvm\current\lib
# LUA_DEV=C:\Users\User\apps\lua-for-windows\current
NVM_HOME=C:\Users\User\Scoop\apps\nvm\current
NVM_SYMLINK=C:\Users\User\Scoop\persist\nvm\nodejs\nodejs
# Opt
MAGICK_CODER_MODULE_PATH=C:\Users\User\Scoop\apps\imagemagick\current\modules\coders
MAGICK_HOME=C:\Users\User\Scoop\apps\imagemagick\current
OLLAMA_HOST=0.0.0.0
OLLAMA_ORIGINS=*
TESSDATA_PREFIX=C:\Users\User\Scoop\apps\tesseract-languages\current
# For init.sh
DOTFILES_DIR=C:\Users\User\Usr\Git\dotfiles
PEGASUS_HOME=C:\Users\User\Scoop\apps\pegasus\current
SCOOP_HOME=C:\Users\User\Scoop
```

Ignore `scoop install` add, add into Path:

```
C:\Users\User\AppData\Local\Yarn\bin;
C:\Users\User\AppData\Roaming\luarocks\bin;
C:\gcc-lua-install\lua-5.4.8\lua;
C:\gcc-lua-install\lua-5.4.8\lua\bin;
C:\Users\User\Scoop\apps\gridplayer\current;
C:\Users\User\Scoop\apps\video-compare\current;
C:\Users\User\.cargo\bin;
C:\Users\User\.cargo\tmp\release\deps;
C:\Users\User\.go\bin;
C:\Users\User\.local\bin;
C:\Users\User\.pipx\bin;
C:\Users\User\.pnpm;
C:\Users\User\.pyenv\pyenv-win\bin;
C:\Users\User\.pyenv\pyenv-win\shims;
C:\Users\User\.rustup\toolchains\stable-x86_64-pc-windows-msvc\bin;
C:\Users\User\Usr\Git\Shell\_windows;
C:\Users\User\Usr\Lib\rbenv\rbenv\bin;
C:\Users\User\Usr\Lib\rbenv\shims;
C:\Users\User\Usr\Opt\cmder_mini;
C:\Users\User\Usr\Source\cmder\owl-cmder-tools\bin;
C:\Program Files (x86)\Aspell-0.60\bin;
C:\Program Files\BraveSoftware\Brave-Browser\Application;
C:\Program Files\Ethea\SVGShellExtensions;
C:\Program Files\GPSoftware\Directory Opus;
C:\Program Files\LinkShellExtension\32;
C:\Program Files\Sublime Text;
# C:\Users\User\Usr\Lib\lua51\bin;
# C:\Users\User\Scoop\apps\yarn\current\bin;
# C:\Users\User\Scoop\apps\yarn\current\global\node_modules\.bin;
# C:\Users\User\Scoop\apps\sioyek\current;
```

## command

```sh
# Get Windows environments
SET
```

```
# BaseDirs
ALLUSERSPROFILE=C:\ProgramData
APPDATA=C:\Users\User\AppData\Roaming
CommonProgramFiles(x86)=C:\Program Files (x86)\Common Files
CommonProgramFiles=C:\Program Files\Common Files
DriverData=C:\Windows\System32\Drivers\DriverData
HOMEDRIVE=C:
HOMEPATH=\Users\User
LOCALAPPDATA=C:\Users\User\AppData\Local
ProgramData=C:\ProgramData
ProgramFiles(x86)=C:\Program Files (x86)
ProgramFiles=C:\Program Files
PUBLIC=C:\Users\Public
SystemDrive=C:
SystemRoot=C:\Windows
TEMP=%SystemRoot%\TEMP # TEMP=C:\Users\User\AppData\Local\Temp
TMP=%SystemRoot%\TEMP # TMP=C:\Users\User\AppData\Local\Temp
USERNAME=User
USERPROFILE=C:\Users\User
windir=%SystemRoot%

# Other
ComSpec=C:\Windows\system32\cmd.exe
FPS_BROWSER_APP_PROFILE_STRING=Internet Explorer
FPS_BROWSER_USER_PROFILE_STRING=Default
PATHEXT=.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC

# PATH
Path=C:\Windows;C:\Windows\system32;C:\Windows\System32\OpenSSH;C:\Windows\system32\wbem;C:\Windows\System32\WindowsPowerShell\v1.0
```

## Personal do

```sh
scoop install ^
	bun ^
	cmake ^
	gsudo ^
	gzip ^
	libwebp ^
	llvm ^
	meson ^
	ninja ^
	perl ^
	sed ^
	sox ^
	trzsz ^
	unrar ^
	vcxsrv ^
	wget ^
	win32yank ^
	zig ^
	zlib
```

```sh
gsudo scoop install ^
	sshfs-np ^
	windowsdesktop-runtime-6.0 ^
	windowsdesktop-runtime-7.0 ^
	windowsdesktop-runtime-lts
```

```sh
# Personal scoop bucket
scoop install ^
	7zip-extra ^
	altbacktick ^
	audiobookconverter ^
	audiowaveform ^
	cjam ^
	dictzip ^
	hydralauncher ^
	keppymidiconverter ^
	madamiru ^
	nomeiryoui ^
	pgstosrt ^
	rectanglewin ^
	resizer2 ^
	sizer ^
	smartzip ^
	someruler ^
	svg2png ^
	wxmp3gain ^
	wcap ^
	webify
	# pro
```

```sh
# Personal scoop bucket
gsudo scoop install ^
	sshfs-win-manager-np
```

Install by installer:

- Brave
- clawPDF
- cmder_mini
- Copy Dialog Lunar Lander
- DarkThumbs
- DeviceCleanup
- Directory Opus
- DiskGenius
- Image To PDF Converter
- Qt Movie Thumbnailer
- QuickSFV
- STL-Thumb
- Sublime Text
- SVG Shell Extensions and SVG Text Editor
- Video Duplicate Finder
- Virtual Display Driver

## Personal do

### dotfiles

```sh
mkdir "$APPDATA\pip"
mklink "$APPDATA\pip\pip.ini" "%DOTFILES_DIR%\.config\pip\pip.conf"
mklink "C:\Users\User\.npmrc" "%DOTFILES_DIR%\.npmrc"
mkdir -p "C:\Users\User\.nvm"
mklink "C:\Users\User\.nvm\settings.txt" "%DOTFILES_DIR%\.config\nvm\settings_windows.txt"
mklink "C:\Users\User\.yarnrc" "%DOTFILES_DIR%\.yarnrc"
mkdir -p "C:\Users\User\.cargo"
mklink "C:\Users\User\.cargo\config.toml" "%DOTFILES_DIR%\.cargo\config.toml"
```

### Script and bin

```sh
mkdir C:\Users\User\Usr\Shell
cd C:\Users\User\Usr\Shell
git clone --depth=1 https://github.com/simonthum/git-sync
git clone --depth=1 https://github.com/fboender/multi-git-status
git clone --depth=1 https://github.com/badrelmers/RefrEnv
```

### SendTo menu

```sh
set SendTo="C:\Users\User\AppData\Roaming\Microsoft\Windows\SendTo"
set DirSendTo="C:\Users\User\Usr\Git\Shell\_windows\SendTo"
del "%SendTo%\7zFM.exe"
del "%SendTo%\WinMergeU.exe"
del "%SendTo%\video-compare.exe"
del "%SendTo%\img2jpg.bat"
del "%SendTo%\gridplayer.bat"
del "%SendTo%\oxipng.bat"
del "%SendTo%\pdf2jpg.bat"
del "%SendTo%\pngquant.bat"
del "%SendTo%\ttf2woff.bat"
del "%SendTo%\yoga.bat"
mklink "%SendTo%\7zFM.exe" "%SCOOP_HOME%\apps\7zip\current\7zFM.exe"
mklink "%SendTo%\WinMergeU.exe" "%SCOOP_HOME%\apps\winmerge\current\WinMergeU.exe"
mklink "%SendTo%\video-compare.exe" "%SCOOP_HOME%\apps\video-compare\current\video-compare.exe"
mklink "%SendTo%\img2jpg.bat" "%DirSendTo%\img2jpg.bat"
mklink "%SendTo%\oxipng.bat" "%DirSendTo%\oxipng.bat"
mklink "%SendTo%\pdf2jpg.bat" "%DirSendTo%\pdf2jpg.bat"
mklink "%SendTo%\pngquant.bat" "%DirSendTo%\pngquant.bat"
mklink "%SendTo%\ttf2woff.bat" "%DirSendTo%\ttf2woff.bat"
mklink "%SendTo%\yoga.bat" "%DirSendTo%\yoga.bat"
```

## reference

- #guide [video-compare - Practical tips](https://github.com/pixop/video-compare?tab=readme-ov-file#practical-tips)

## cross-reference

1. [archwsl.md#resource](os/arch/archwsl.md)
2. [arch-linux.md#resource](os/arch/arch-linux.md)

- #windows [advancedrenamer.md](/opt/_windows/advancedrenamer.md)
- #windows [autohotkey.md](/lib/_windows/autohotkey.md)
- #windows [bulk-rename-utility.md](/opt/_windows/bulk-rename-utility.md)
- #windows [carnac.md](/opt/_windows/carnac.md)
- #windows [centertaskbar.md](/opt/_windows/centertaskbar.md)
- #windows [chocolatey.md](/bin/_windows/chocolatey.md)
- #windows [cmder.md](/opt/_windows/cmder/cmder.md)
- #windows [cpu-z.md](/opt/_windows/cpu-z.md)
- #windows [deskpins.md](/opt/_windows/deskpins.md)
- #windows [detect-it-easy.md](/opt/_windows/detect-it-easy.md)
- #windows [directory-opus.md](/opt/_windows/directory-opus.md)
- #windows [ditto.md](/opt/_windows/ditto.md)
- #windows [dngrep.md](/opt/_windows/dngrep.md)
- #windows [eartrumpet.md](/opt/_windows/eartrumpet.md)
- #windows [everything.md](/opt/_windows/everything.md)
- #windows [geekuninstaller.md](/opt/_windows/geekuninstaller.md)
- #windows [gpu-z.md](/opt/_windows/gpu-z.md)
- #windows [hosts-file-editor.md](/opt/_windows/hosts-file-editor.md)
- #windows [imageglass.md](/opt/_windows/imageglass.md)
- #windows [irfanview.md](/opt/_windows/irfanview.md)
- #windows [jpegview.md](/opt/_windows/jpegview.md)
- #windows [keypirinha.md](/opt/_windows/keypirinha.md)
- #windows [lintalist.md](/opt/_windows/lintalist.md)
- #windows [lockhunter.md](/opt/_windows/lockhunter.md)
- #windows [miktex.md](/opt/_windows/miktex.md)
- #windows [mp3tag.md](/opt/_windows/mp3tag.md)
- #windows [nohboard.md](/opt/_windows/nohboard.md)
- #windows [open-shell.md](/opt/_windows/open-shell.md)
- #windows [powersession-rs.md](/bin/_windows/powersession-rs.md)
- #windows [powershell.md](/bin/_windows/powershell.md)
- #windows [openhashtab.md](/opt/_windows/openhashtab.md)
- #windows [rbtray.md](/opt/_windows/rbtray.md)
- #windows [reduce-memory.md](/opt/_windows/reduce-memory.md)
- #windows [restart-explorer.md](/opt/_windows/restart-explorer.md)
- #windows [rufus.md](/opt/_windows/rufus.md)
- #windows [scoop.md](/bin/_windows/scoop.md)
- #windows [sd-card-formatter.md](/opt/_windows/sd-card-formatter.md)
- #windows [sharpkeys.md](/opt/_windows/sharpkeys.md)
- #windows [shellexview.md](/opt/_windows/shellexview.md)
- #windows [smartzip.md](/opt/_windows/smartzip.md)
- #windows [sumatrapdf.md](/opt/_windows/sumatrapdf.md)
- #windows [t-clock.md](/opt/_windows/t-clock.md)
- #windows [winmerge.md](/opt/_windows/winmerge.md)
- #windows [winscp.md](/opt/_windows/winscp.md)
- #windows [winsshterm.md](/opt/_windows/winsshterm.md)
- [tightvnc.md](/opt/tightvnc.md)

## troubleshoot

- [Fix problems with Opus OGG files in Windows 10](https://www.youtube.com/watch?v=y6wMvTldfQo)

## cache

- `Win+Q`
	- 搜索权限和历史记录 → (All Off)
	- Windows Search设置 → 高级搜索索引器设置 → 经典 → 在此自定义搜索位置 → 修改 → 包含的位置/用户 Off → 确定
- 鼠标
	- 鼠标设置 → 其他鼠标选项 → 指针 → Grey Tango
	- 自定义 → 文本选择 → 浏览 → `cursor_white/Text.cur` → 应用
- SMB
	- 启用或关闭Windows功能 → SMB1.0/CIFS文件共享支持(On) → SMB直通(On)
	- 网络和共享中心 → 高级共享设置 → 专用 → 启用网络发现(On) → 启用网络连接设备的自动设置(On) → 启用文件和打印机共享(On)
	- 计算机管理 → 本地用户和组 → 用户 → 右键 → 新用户 → 用户名() → 用户不能更改密码(On) → 密码永不过期(On) → 新建
	- 文件夹 → 右键 → 属性 → 共享 → 共享 → 选择要与其共享的用户 ... 权限级别(读取/写入) → 共享 → 完成
- 查询本机IP
	- CMD → `ipconfig | findstr /i "ipv4"`
	- 网络状态 → 更改适配器选项 → 以太网 → 属性 → Internet协议版本4 → IPv4
- 添加网络位置
	- 此电脑 → 右键 → 添加一个网络位置 → 下一页 → 选择自定义网络位置 → 查看示例 ... 用户名() → 下一步 ... 保存密码(On) → 登录 → 完成
- 新建防火墙规则
	- 管理Windows防火墙规则 → 创建新规则 → 新增空白规则 ... 此程序 → 浏览名称 → 方向 → 出站
- 资源管理器
	- 查看 → 选项 → 常规 → 打开文件资源管理器时打开(此电脑) → 在"快速访问"中显示常用文件夹(Off)
	- ... 查看 → 显示隐藏的文件、文件夹和驱动器 (On) → 隐藏已知文件类型的扩展名 (Off)
- 自动播放CD或其他媒体
	- 可移动驱动器 → 不执行操作
- 关闭Windows键热键
	- 编辑组策略 → 用户配置 → 管理模板 → Windows组件 → 文件资源管理器 → 关闭Windows键热键 → 右键 → 编辑 → 已启用 → 确定
- 键盘
	- Windows
		- 编辑语言和键盘选项
			- 拼写、键入和键盘设置 → 全部关闭
			- 添加语言 → 英语(美国)
			- 添加语言 → 中文(简体，中国)/选项 → 微软拼音 → 删除
		- 高级键盘设置
			- 语言栏选项 → 语言栏/语言栏 隐藏 → (可选)高级键设置
				- 在输入语言之间 → 更改按键顺序 → (无)
				- 切换到英语(美国) - 美式键盘 → 更改按键顺序 → (无)
				- 切换到中国(简体,中国) - 小狼毫 → 更改按键顺序 → Ctrl+Shift+1
				- 中文(简体)输入法 - 输入法/非输入发切换 → Ctrl+Shift+F12
			- 替代默认输入法 → 英语(美国) - 美式键盘 → 允许我为每个应用窗口使用不同的输入法 Off
	- KBLAutoSwith → 设置
		- 基础设置1 → 输入法切换设置
			- 自动切换 → 禁止
			- 默认输入法 → 英文
		- 基础设置2 → 特殊热键 → 右Shift → 切换中英文输入法
	- Rime
		- 迁移: 复制用户资料夹到新目录 → 小狼毫 安装选项 → 新目录 → 小狼毫 重新部署 → 小狼毫算法服务
		- 小狼毫安装选项 → 用户文件夹 → 使用默认默认位置 → 修改文件夹
		- 小狼毫重新部署
			- 小狼毫输入法设定 → 检查配置
		- 崩溃时运行小狼毫算法服务
- 声音
	- 声音 → 声音控制面板 → 声音 → 声音方案 → 无声
- Game bar
	- 游戏 → Game Bar (Off) → 允许控制器打开Game Bar (Off)
- 更改DNS服务器
	- 查看网络连接 → 以太网 → 属性 → 网络 → Internet协议版本4 → 属性 → 自动获得DNS服务器地址
	- 命令提示符 → `ipconfig /flushdns`
- 打印机
	- 属性 → 共享 → 共享这台打印机 (On) → 在客户端计算机上呈现打印作业 (On)
