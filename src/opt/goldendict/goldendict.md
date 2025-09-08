# [GoldenDict](https://github.com/goldendict/goldendict)

> GoldenDict是一款开源的桌面端词典检索应用，跨平台，支持多种词典格式。它有十分丰富的可配置项，包括字典组，拼写检查、单词发音、语音合成、在线翻译等等。 [scillidan, "配置GoldenDict"]

> GoldenDict is an open-source desktop dictionary lookup application that is cross-platform and supports multiple dictionary formats. It features a wide range of configurable options, including dictionary groups, spell checking, word pronunciation, text-to-speech, online translation, and more. [scillidan, "配置GoldenDict"]

## install

```sh
# Arch
yay -S --noconfirm goldendict-git
# Windows 10
scoop install goldendict
```

## Personal do

```sh
# Arch
mkdir "~/Usr/Source/goldendict"
cd "~/Usr/Source/goldendict"
```

```sh
# Windows 10
mkdir "%USERPROFILE%/Usr/Source/goldendict"
cd "%USERPROFILE%/Usr/Source/goldendict"
git clone --depth=1 https://github.com/VimWei/GoldenDictOCR
```

```sh
git clone --depth=1 https://gist.github.com/e95773454d79dc047aeed016fb00daef tencenttrans_2zh_zh2en
```

```sh
git clone --depth=1 https://github.com/LibreOffice/dictionaries
```

### Dark theme

```sh
git clone --depth=1 https://github.com/yozhic/GoldenDict-Full-Dark-Theme
cd GoldenDict-Full-Dark-Theme
sudo ln -sfn $(pwd)/GoldenDict/extras /usr/share/goldendict/extras
sudo ln -sfn $(pwd)/GoldenDict/icons /usr/share/goldendict/icons
ln -sfn $(pwd)/GoldenDict/fonts $HOME/.config/goldendict/fonts
mkdir -p $HOME/.config/goldendict/styles/Dark
(cat "$(pwd)/GoldenDict/styles/Dark/article-style.css"; curl -s https://raw.githubusercontent.com/scillidan/dotfiles/refs/heads/main/.config/_goldendict/article-style_user.css) > "$HOME/.config/goldendict/styles/Dark/article-style.css"
ln -sfn $(pwd)/GoldenDict/styles/Dark/qt-style.css $HOME/.config/goldendict/styles/Dark/qt-style.css
```

## reference

- #blog [配置GoldenDict](https://scillidan.github.io/YAFA-site/blog/goldendict/)
- #blog [配置GoldenDict·番外](https://scillidan.github.io/YAFA-site/blog/goldendict-expand/)
- #guide [How to create your own dictionary in mdx file format | by Otto Lin](https://medium.com/@cia1099/how-to-create-your-own-dictionary-in-mdx-file-format-ec1f75509bf3)
- [configuration Folder cannot be found with a flatpak installation · Issue #1492 · goldendict/goldendict](https://github.com/goldendict/goldendict/issues/1492)

## cross-reference

- #script [init_goldendict.bat](https://github.com/scillidan/Shell/blob/main/opt/init_goldendict.bat)
- #script [init_goldendict.sh](https://github.com/scillidan/Shell/blob/main/opt/init_goldendict.sh)

## resource

### later

- [GoldenDict tools](https://github.com/Ajatt-Tools/gd-tools)

### cache

- [Acute](https://terokarvinen.com/2017/acute-0-2-2-integrate-help-commands-to-single-interface-pydoc3-puppet-describe-and-man-in-goldendict/?fromSearch=acute)
- [Flexible Text Copy Adapter (FTCA)](https://github.com/voothi/ftca)
- [gd-frequency](https://github.com/toytoi/gd-frequency)
- [GD-Translator - An AI Translator as a GoldenDict Extension](https://github.com/xrysamuel/GD-Translator)
- [goldenDict-browser-helper](https://github.com/fthvgb1/goldendict-browser-helper)
- [GoldenDict-DeepL](https://github.com/DevJogger/GoldenDict-DeepL)
- [goldendict-llm](https://github.com/tidyimpress/goldendict-llm)
- [GoldenDict-openai-translator](https://github.com/Twinblade-i/goldendict-openai-translator)
- [Tencent-Translator-rs](https://github.com/mingerfan/Tencent-Translator-rs)
- [TMX to Goldendict Convertor](https://github.com/Celso-Scott/TMX-to-Goldendict-Converter)

## annex

[goldendict_pronunciation.mp4](https://scillidan.github.io/media_cheat/opt/goldendict_pronunciation.mp4), ([bilibili](https://www.bilibili.com/video/BV1pw411V761)
[goldendict_umi-ocr.mp4](https://scillidan.github.io/media_cheat/opt/goldendict_umi-ocr.mp4), ([bilibili](https://www.bilibili.com/video/BV1CC4y1S77c)
[goldendict_goldendictocr.mp4](https://scillidan.github.io/media_cheat/opt/goldendict_goldendictocr.mp4), ([bilibili](https://www.bilibili.com/video/BV1cK41187up)
