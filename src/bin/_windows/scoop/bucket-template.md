# [BucketTemplate](https://github.com/ScoopInstaller/BucketTemplate)

## reference

- #document [Buckets](https://github.com/ScoopInstaller/Scoop/wiki/Buckets)
	- [App Manifests](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifests)
	- [App Manifest Autoupdate](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate)
		- [Adding checkver to a manifest](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifest-Autoupdate#adding-checkver-to-a-manifest)
  - [Pre Post (un)install scripts](https://github.com/ScoopInstaller/Scoop/wiki/Pre-Post-(un)install-scripts)
- #guide [CONTRIBUTING.md](https://github.com/ScoopInstaller/.github/blob/main/.github/CONTRIBUTING.md)
- #guide [Scoop Bucket Template](https://github.com/ScoopInstaller/BucketTemplate)

## Reference examples

- [Nonportable/bucket](https://github.com/ScoopInstaller/Nonportable/tree/master/bucket)
- [7zip.json](https://github.com/ScoopInstaller/Main/blob/master/bucket/7zip.json) _post_install_
- [alacritty.json](https://github.com/ScoopInstaller/Extras/blob/master/bucket/alacritty.json) _post_install_ _pre_uninstall_
- [calibre.json](https://github.com/ScoopInstaller/Extras/blob/master/bucket/calibre.json) _installer_
- [handbrake.json](https://github.com/ScoopInstaller/Extras/blob/master/bucket/handbrake.json) _installer_
- [neovim.json](https://github.com/ScoopInstaller/Main/blob/master/bucket/neovim.json) _checkver_
- [sumatrapdf-installer.json](https://github.com/ScoopInstaller/Versions/blob/master/bucket/sumatrapdf-installer.json) _pre_install_ _installer_ _post_install_ _uninstaller_
