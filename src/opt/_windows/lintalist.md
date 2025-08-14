# [Lintalist](https://lintalist.github.io/)

> Lintalist allows you to store and (incrementally) search and edit texts in bundles and paste a selected text in your active program. The text can be interactive, for example you can automatically insert the current time and date, ask for (basic) user input or make a selection from a list etc and finally it can also run a script. You can use keyboard shortcuts or abbreviations to paste the text (or run the script) without opening the search window. [lintalist.github.io]

> Lintalist允许您以捆绑的方式存储、增量搜索和编辑文本，并将选定的文本粘贴到您当前活动的程序中。文本可以是交互式的，例如，您可以自动插入当前的时间和日期，询问（基本）用户输入或从列表中进行选择等，最后它还可以运行脚本。您可以使用键盘快捷键或缩写在不打开搜索窗口的情况下粘贴文本（或运行脚本）。 [lintalist.github.io]

## Personal do

```sh
scoop install lintalist
mkdir %USERPROFILE%\Usr\Source\lintalist
cd %USERPROFILE%\Usr\Source\lintalist
git clone --depth1=1 https://github.com/lintalist/lintalist-themes
cd lintalist-themes
unzip Solarized.zip -d Solarized
```

Move `Solarized\` into `<path_to>\lintalist\themes\`.

## config

- Lintalist → MBtm_R → Configuration
	- Settings
		- AlwaysLoadBundles=default.txt
		- DefaultBundle=default.txt
		- Font=Sarasa Term SC Nerd Font
		- FontSize=10
		- SetStartup=1
		- ShowQuickStartGuide=0
		- SortByUsage=0
		- StartOmniSearchHotkey=^#!l
		- StartSearchHotkey=#!l
		- Theme=\Solarized\Solarized.ini
		- CompactHeight=720
		- CompactWidth=360
		- WideHeight=480
		- WideWidth=850

## reference

- #post [Introduction](https://lintalist.github.io/#Introduction)
- #document [Lintalist](https://lintalist.github.io/)
- [Interactive bundle text](https://lintalist.github.io/#InteractiveBundleText)
- [Lintalist MultiCaret support](https://github.com/lintalist/lintalist/blob/master/docs/MultiCaret.md)
