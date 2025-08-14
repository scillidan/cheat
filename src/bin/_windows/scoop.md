# [Scoop](https://scoop.sh)

## install

[^1] [^2] [^3]

```pwsh
Set-ExecutionPolicy ByPass -Scope Process -Force
$env:SCOOP='C:\Users\User\Scoop'
$env:SCOOP_GLOBAL='C:\Users\User\Scoop'
[Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
```

## usage

```sh
# scoop update innounp
scoop install <pkg>
```

## Update scoop

```sh
scoop update scoop
```

Or[^4]:

```sh
cd C:\Users\User\Scoop\apps\scoop\current
git fetch
git pull
```

## Add bucket

```sh
scoop bucket add extras
scoop bucket add nonportable
scoop bucket add nirsoft
scoop bucket add versions
scoop bucket add java
# scoop bucket add games
```

Or:

```sh
cd C:\Users\User\Scoop\buckets
# git clone --depth=1 https://github.com/ScoopInstaller/Main
git clone --depth=1 https://github.com/ScoopInstaller/Extras
git clone --depth=1 https://github.com/ScoopInstaller/Nonportable
git clone --depth=1 https://github.com/kodybrown/scoop-nirsoft
git clone --depth=1 https://github.com/ScoopInstaller/Versions
git clone --depth=1 https://github.com/ScoopInstaller/Java
# git clone --depth=1 https://github.com/Calinou/scoop-games
```

## Create your bucket

- #blog [再谈谈 Scoop 这个 Windows 下的软件包管理器](https://chawyehsu.com/blog/talk-about-scoop-the-package-manager-for-windows-again)
- #document [Buckets · ScoopInstaller/Scoop Wiki](https://github.com/ScoopInstaller/Scoop/wiki/Buckets)
- #guide [CONTRIBUTING.md](https://github.com/ScoopInstaller/.github/blob/main/.github/CONTRIBUTING.md)
	- #guide [App Manifests](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifests)
	- #guide [App Manifest Autoupdate](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate)
- #guide [Scoop Bucket Template](https://github.com/ScoopInstaller/BucketTemplate)
- #example
	- [7zip.json](https://github.com/ScoopInstaller/Main/blob/master/bucket/7zip.json)
	- [alacritty.json](https://github.com/ScoopInstaller/Extras/blob/master/bucket/alacritty.json)
	- [calibre.json](https://github.com/ScoopInstaller/Extras/blob/master/bucket/calibre.json)
	- [handbrake.json](https://github.com/ScoopInstaller/Extras/blob/master/bucket/handbrake.json)
	- [mpv.json](https://github.com/ScoopInstaller/Extras/blob/master/bucket/mpv.json)
	- [neovim.json](https://github.com/ScoopInstaller/Main/blob/master/bucket/neovim.json)
	- [sumatrapdf-installer.json](https://github.com/ScoopInstaller/Versions/blob/master/bucket/sumatrapdf-installer.json)

## resource

### mark

- #bucket [Scoop Extras](https://github.com/ScoopInstaller/Extras)
- #bucket [Scoop Java](https://github.com/ScoopInstaller/Java)
- #bucket [Scoop Main](https://github.com/ScoopInstaller/Main)
- #bucket [Scoop Versions](https://github.com/ScoopInstaller/Versions)
- #bucket [scoop-nirsoft](https://github.com/kodybrown/scoop-nirsoft)
- [scoop-search](https://github.com/shilangyu/scoop-search)

### cache

- #bucket [dorado](https://github.com/chawyehsu/dorado)
- #bucket [rasa](https://github.com/rasa/scoops)
- #bucket [Scoop bucket for Nerd Fonts](https://github.com/matthewjberger/scoop-nerd-fonts)
- #bucket [Scoop Bucket for Sysinternals](https://github.com/niheaven/scoop-sysinternals)
- #bucket [Scoop 应用库中国加速](https://github.com/duzyn/scoop-cn)
- #bucket [scoop-games](https://github.com/Calinou/scoop-games)
- [scoop-search-multisource](https://github.com/plicit/scoop-search-multisource)

## Personal bucket

### mark

- [7zip-extra](https://github.com/scillidan/bucket/7zip-extra.json)
- [altbacktick](https://github.com/scillidan/bucket/altbacktick.json)
- [audiobookconverter](https://github.com/scillidan/bucket/audiobookconverter.json)
- [audiowaveform](https://github.com/scillidan/bucket/audiowaveform.json)
- [cjam](https://github.com/scillidan/bucket/cjam.json)
- [dictzip](https://github.com/scillidan/bucket/dictzip.json)
- [hydralauncher](https://github.com/scillidan/bucket/hydralauncher.json)
- [keppymidiconverter](https://github.com/scillidan/bucket/keppymidiconverter.json)
- [lintalist](https://github.com/scillidan/bucket/lintalist.json)
- [madamiru](https://github.com/scillidan/bucket/madamiru.json)
- [mdtable2csv](https://github.com/scillidan/bucket/mdtable2csv.json)
- [nomeiryoui](https://github.com/scillidan/bucket/nomeiryoui.json)
- [pgstosrt](https://github.com/scillidan/bucket/pgstosrt.json)
- [pro](https://github.com/scillidan/bucket/pro.json)
- [rectanglewin](https://github.com/scillidan/bucket/rectanglewin.json)
- [resizer2](https://github.com/scillidan/bucket/resizer2.json)
- [sizer](https://github.com/scillidan/bucket/sizer.json)
- [smartzip](https://github.com/scillidan/bucket/smartzip.json)
- [someruler](https://github.com/scillidan/bucket/someruler.json)
- [sshfs-win-manager-np](https://github.com/scillidan/bucket/sshfs-win-manager-np.json)
- [svg2png](https://github.com/scillidan/bucket/svg2png.json)
- [wcap](https://github.com/scillidan/bucket/wcap.json)
- [webify](https://github.com/scillidan/bucket/webify.json)
- [wxmp3gain](https://github.com/scillidan/bucket/wxmp3gain.json)

### extra

- [shell-x](https://github.com/scillidan/bucket/shell-x.json)

### cache

- [es-de](https://github.com/scillidan/bucket/es-de.json)
- [gvm](https://github.com/scillidan/bucket/gvm.json)
- [smf-dsp](https://github.com/scillidan/bucket/smf-dsp.json)
- [tagstudio](https://github.com/scillidan/bucket/tagstudio.json)
- [textractor](https://github.com/scillidan/bucket/textractor.json)
- [trilium-next](https://github.com/scillidan/bucket/trilium-next.json)
- [virgo](https://github.com/scillidan/bucket/virgo.json)
- [zonylrctoolsx](https://github.com/scillidan/bucket/zonylrctoolsx.json)


[^1]: [Scoop (un)installer](https://github.com/ScoopInstaller/Install#advanced-installation)
[^2]: [CMD.exe wrapper](https://github.com/shilangyu/scoop-search#cmdexe-wrapper)
[^3]: [About the Download Directory](https://github.com/ScoopInstaller/Scoop/issues/3666)
[^4]: [scoop update fails to connect to GitHub](https://github.com/ScoopInstaller/Scoop/issues/3124)
