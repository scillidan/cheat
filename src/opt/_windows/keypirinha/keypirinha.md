# [Keypirinha](https://keypirinha.com)

## install

```sh
scoop install keypirinha
```

## Personal do

```sh
rmdir /S /Q "%SCOOP_HOME%\apps\keypirinha\current\portable\Profile\User"
mklink /J "%SCOOP_HOME%\apps\keypirinha\current\portable\Profile\User" "%DOTFILES_DIR%\.config\_windows_keypirinha\Profile\User"
mkdir "%USERPROFILE%/Usr/File"
```

```sh
cd "%USERPROFILE%\Usr\File"
git clone --depth=1 https://github.com/scillidan/file_keypirinha_pkg
rmdir /S /Q "%SCOOP_HOME%\apps\keypirinha\current\portable\Profile\InstalledPackages"
mklink /J "%SCOOP_HOME%\apps\keypirinha\current\portable\Profile\InstalledPackages" "%USERPROFILE%\Usr\File\file_keypirinha_pkg"
```

```sh
cd "%USERPROFILE%\Usr\RepoFork"
git clone --depth=1 https://github.com/scillidan/Keypirinha-PuzzTools
```

1. Alacritty → MBtm → Create Shortcut
2. Shortcut → MBtm → Properties → Target → `<path_to>\alacritty.exe --config-file "<path_to>\alacritty.toml"  --working-directory "C:\Users\User" --command"
3. Keypirinha → MBtn_R → Configure Keypirinha
	 ```
	 [external]
	 terminal = "C:\Users\User\.local\bin\alacritty_command.lnk"
	 ```

## reference

- [Add provider for chromium based edge bookmarks](https://github.com/Keypirinha/Packages/pull/41)
- [Copy & Past bookmark folder to new location](https://community.brave.com/t/copy-past-bookmark-folder-to-new-location/437841)

## cross-reference

### extra

- [keypirinha-zealous.md](/opt/_windows/keypirinha-zealous.md)

## resource

### mark

- [keypirinha-theme-builder](https://github.com/Fuhrmann/keypirinha-theme-builder)

### cache

- [Keypirinha_SearchCSV](https://github.com/novamostra/Keypirinha_SearchCSV
- [Keypirinha Plugin: Audio Switcher](https://github.com/armotic/keypirinha-audioswitcher
- [Keypirinha Plugin: ChronoTools](https://github.com/NMeJa/keypirinha-chronotools
- [Keypirinha Plugin: epoch](https://github.com/prayzzz/keypirinha-epoch
- [Keypirinha Plugin: FakerData](https://github.com/Fuhrmann/keypirinha-faker-data
- [Keypirinha Plugin: foobar2000](https://github.com/tuteken/Keypirinha-Plugin-foobar2000
- [Keypirinha Plugin: Git-Fork](https://github.com/fran-f/keypirinha-git-fork
- [Keypirinha Plugin: MovieDB](https://github.com/Fuhrmann/keypirinha-moviedb
- [Keypirinha Plugin: MyIP](https://github.com/Fuhrmann/keypirinha-myip
- [Keypirinha Plugin: QR Code](https://github.com/thisisleobro/Keypirinha-qrcode
- [Keypirinha Plugin: quicknote-markdown](https://github.com/NopenAI/keypirinha-quicknote-markdown
- [Keypirinha Plugin: Steam](https://github.com/EhsanKia/keypirinha-plugins/tree/master/keypirinha-steam
- [Keypirinha WindowsApps](https://github.com/ueffel/Keypirinha-WindowsApps
- [keypirinha-allmygames](https://github.com/TanninOne/keypirinha-allmygames
- [keypirinha-chocolatey](https://github.com/dufferzafar/keypirinha-chocolatey
- [keypirinha-devdocs](https://github.com/theZetrax/keypirinha-devdocs
- [keypirinha-monitorcontrol](https://github.com/ccarpo/keypirinha-monitorcontrol
- [keypirinha-notionSearcher](https://github.com/wolloda/keypirinha-notionSearcher
- [keypirinha-Playnite](https://github.com/SomeoneIsWorking/keypirinha-Playnite
- [Keypirinha-Plugin-Ditto](https://github.com/tuteken/Keypirinha-Plugin-Ditto
- [Keypirinha-Recoll](https://github.com/marcus-at-localhost/Keypirinha-Recoll
- [keypirinha-terminal-profiles](https://github.com/fran-f/keypirinha-terminal-profiles
- [PackageControl-Server](https://github.com/ueffel/PackageControl-Server
- [PowerSwitch Plugin for Keypirinha](https://github.com/NMeJa/keypirinha-powerswitch

## annex

![color_fakenight](/_image/opt/_windows/keypirinha/color_fakenight.png)
![color_vanta](/_image/opt/_windows/keypirinha/color_vanta.png)
