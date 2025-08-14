# [dnGrep](https://github.com/dnGrep/dnGrep)

## install

```sh
scoop install dngrep
```

## config

- dnGrep
	- Settings → Options
		- Application fonts
			- Font family → `Sarasa Term SC Nerd`
			- Results font family → `Sarasa Term SC Nerd`
		- Custom editor
			- Sublime Text
				```
				Lable: Sublime Text
				Command: C:\Program Files\Sublime Text\subl.exe
				Arguments: %file:%line:%column
				```
		- Compare application
			```
			Command: WinMergeU.exe
			Arguments: /e /u /x
			```
	- Search in
		- Patterns to match → `*.md;*.txt`
		- Patterns to exclude → `.git\*;node_modules;public;site;_build;_gen`
