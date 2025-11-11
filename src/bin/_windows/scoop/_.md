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

## reference

- #blog [再谈谈 Scoop 这个 Windows 下的软件包管理器](https://chawyehsu.com/blog/talk-about-scoop-the-package-manager-for-windows-again)
- #document [Buckets · ScoopInstaller/Scoop Wiki](https://github.com/ScoopInstaller/Scoop/wiki/Buckets)
- #guide [CONTRIBUTING.md](https://github.com/ScoopInstaller/.github/blob/main/.github/CONTRIBUTING.md)
	- #guide [App Manifests](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifests)
	- #guide [App Manifest Autoupdate](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate)
- #guide [Scoop Bucket Template](https://github.com/ScoopInstaller/BucketTemplate)

## cross-reference

- [bucket](bin/_windows/scoop/bucket.md)
- [bucket-template.md](bin/_windows/scoop/bucket-template.md)
- [scoop-search.md](bin/_windows/scoop/scoop-search.md)

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

[^1]: [Scoop (un)installer](https://github.com/ScoopInstaller/Install#advanced-installation)
[^2]: [CMD.exe wrapper](https://github.com/shilangyu/scoop-search#cmdexe-wrapper)
[^3]: [About the Download Directory](https://github.com/ScoopInstaller/Scoop/issues/3666)
[^4]: [scoop update fails to connect to GitHub](https://github.com/ScoopInstaller/Scoop/issues/3124)
