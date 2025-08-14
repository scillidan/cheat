# [Everything](https://www.voidtools.com/)

## install

```sh
scoop install everything
```

## config

[^1] [^2]

- Everything → Options
	- General
		- Fonts and Colors → `更纱终端书呆黑体-简`
		- Results
			- Close window on execute (On)
			- Open path with double click in path column (On)
		- Keyboard
			- Toggle window Hotkey → `A-e`
	- Index
		- Index
			```
			Index recent changes (On)
			Index date modified (On)
			Fast date modified sort (On)
			Fast path sort (On)
			```
		- Excluede
			- Excluede hidden files and folder (On)
			- Excluede system files and folder (On)
			- Enable exclude list
			- Exclude folder
				- Add Folder
					```
					C:\$Recycle.Bin
					C:\ProgramData
					C:\SysReset
					C:\System Volume Information
					C:\Users\<user>\AppData\Local\Temp
					C:\Windows
					```
				- Add Filter
					```
					.*
					_build
					node_modules
					public
					site
					watch_later*
					*.bak
					*.tmp
					Hiberfil.sys
					Pagefile.sys
					Windows.old
					```

## reference

- #config [[INI - voidtools](https://www.voidtools.com/support/everything/ini/)](https://www.voidtools.com/support/everything/ini/)
- #option [Everything](https://www.voidtools.com/support/everything/searching/)
- #syntax [Searching - voidtools](https://www.voidtools.com/support/everything/searching/)

[^1]: [Omit Recycle Bin Files From Search - voidtools forum](https://www.voidtools.com/forum/viewtopic.php?t=6454)
[^2]: [Tools Options Exclude "Exclude files" *.tmp :: not working ?? - voidtools forum](https://www.voidtools.com/forum/viewtopic.php?t=11617)
