# [Kamite](https://github.com/fauu/Kamite)

> Kamite is desktop software to aid learning Japanese through immersion in native media. It brings Japanese text from those media into a web browser interface, enabling lookup with pop-up dictionaries (such as Yomichan) and websites (such as DeepL Translate), and more. [fauu/Kamite]

> Kamite是一款桌面软件，旨在通过沉浸式媒体来帮助学习日语。它从这些媒体中提取日语文本，并在网页浏览器界面中显示，允许使用弹出式词典（如Yomichan）和网站（如DeepL Translate）等工具进行查询，支持更多的功能。 [fauu/Kamite]

## usage

```sh
mpv --input-ipc-server=/./pipe/kamite-mpvsocket --sub-file="$2" --sid=2 --secondary-sid=1 --secondary-sub-visibility=no --save-position-on-quit "$1"
```

## config

`config.hocon`:

```
# https://github.com/fauu/Kamite/blob/master/config/config.default.hocon
# The modified lines, for example
lookup {
  targets = [
    ${LOOKUP_TARGETS.deepl}
    ${LOOKUP_TARGETS.reverso}
  ]
}

ocr: {
  engine: mangaocr
  tesseract: {
    path: "tesseract"
  }
  mangaocr: {
    pythonPath: "<path_to>/manga-ocr/Scripts/python.exe"
  }
  ocrspace: {
    engine: 1
  }
}

LOOKUP_TARGETS {
  deepl {
    symbol = DEP
    name = DeepL
    url = "https://www.deepl.com/translator#ja/en/{}"
  }
  reverso {
    symbol = REV
    name = Reverso
    url = "https://www.reverso.net/text-translation#sl=jpn&tl=eng&text={}"
  }
}

integrations: {
  agent: {
    enable: no
    host: "127.0.0.1:9001"
  }
}
```

## appdedix

- [kamite_01.mp4](https://scillidan.github.io/media_cheat/opt/kamite_01.mp4)
- [kamite_02.mp4](https://scillidan.github.io/media_cheat/opt/kamite_02.mp4)
