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
		- Sort results automatically when search completes (On)
		- Show results tree expanded (On)
	- Search in
		- Patterns to match → `*.md;*.txt`
		- Patterns to exclude → `SUMMARY.md;.git\*;node_modules;public;site;_build;_gen`
	- Results
		- Preview file (Off)

## usage

- dnGrep
	- Results panel → More → Copy results

## reference

- #document [dnGrep - Wiki](https://github.com/dnGrep/dnGrep/wiki)
	- [Command Line](https://github.com/dnGrep/dnGrep/wiki/Command-Line)
	- [Keyboard](https://github.com/dnGrep/dnGrep/wiki/Keyboard)
	- [Regular Expressions](https://github.com/dnGrep/dnGrep/wiki/Regular-Expressions)
	- [Microsoft Word Search](https://github.com/dnGrep/dnGrep/wiki/Microsoft-Word-Search)
	- [Open XML Search](https://github.com/dnGrep/dnGrep/wiki/Open-XML-Search)
	- [PDF Search](https://github.com/dnGrep/dnGrep/wiki/PDF-Search)

## resource

### cache

- [new Plugin tested / Exiftool](https://github.com/dnGrep/dnGrep/discussions/1124)
- [Using Apache Tika with dnGrep](https://github.com/dnGrep/dnGrep/discussions/1049)
- [Using Msg2txt with dnGrep](https://github.com/dnGrep/dnGrep/discussions/1112)

## troubleshooting

- [Doc word document read failed](https://github.com/dnGrep/dnGrep/issues/1208)