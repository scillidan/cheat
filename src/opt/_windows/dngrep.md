# [dnGrep](https://github.com/dnGrep/dnGrep)

## install

```sh
scoop install dngrep
```

## config

- dnGrep
	- Settings → Options
		- New versions → Check automatically every 10 days (Off)
		- Application fonts
			- Use default font (Off)
			- Font family → `Sarasa Term SC Nerd`
			- Results font family → `Sarasa Term SC Nerd`
		- Custom editor → Add
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
	- Search results
		- Show results tree expanded (On)
	- Search in
		- Patterns to match → `*.md;*.txt`
		- Patterns to exclude → `SUMMARY.md;.git\*;node_modules;public;site;_build;_gen`

## usage

- dnGrep
	- Results panel → More → Copy results