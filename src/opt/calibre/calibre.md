# [Calibre](https://calibre-ebook.com)

> calibre is an e-book manager. It can view, convert, edit and catalog e-books in all of the major e-book formats. It can also talk to e-book reader devices. It can go out to the internet and fetch metadata for your books. It can download newspapers and convert them into e-books for convenient reading. It is cross platform, running on Linux, Windows and macOS. [kovidgoyal/calibre]

> calibre是一款电子书管理器。它能够查看、转换、编辑和编目所有主要电子书格式的电子书。它还可以与电子书阅读器设备进行通信。它可以上网获取书籍的元数据。它可以下载报纸并将其转换为电子书，以方便阅读。它是跨平台的，支持运行在Linux、Windows和macOS上。 [kovidgoyal/calibre]

## install

```sh
# Arch
sudo pacman -S calibre
# Windows 10
scoop install calibre
```

## Deploy with Docker compose

[^1]

```sh
mkdir calibre
cd calibre
vim docker-compose.yml
# Copy from https://docs.linuxserver.io/images/docker-calibre/#docker-compose-recommended-click-here-for-more-info
```

```yaml
		volumes:
			# Save calibre config (Including Cablire Library) on mount disk
			- /mnt/<mount_name>/local/share/calibre/config:/config
			- /mnt/<mount_name>/<book_storage>:/<book_storage>
```

```sh
sudo docker compose up -d
```

1. Cabibre → Preferences → Sharing → Sharing over the net → Run server automatically when calibre starts (On) → Start server.
2. The opds serve is on `http://<your_host>:8081/opds`.

## config

### Main window

- Calibre → Preferences
	- Look & feel
		- Enable system tray icon (needs restart) (On)
		- Toolbar → Icon size → Small
	- Toolbars & menus → Current actions:
		```
		Add books
		Get books
		Choose library
		Create catalog
		--- Separator ---
		Preferences
		Help
		```

### Viewer toolbar

[^2] [^3]

1. Calibre → Select a book → View → View with calibre E-book viewer.
2. At the top of the reader → Show controls → Preferences
	- Miscellaneous
		- Show a toolbar with the most useful actions (On)
		- Customize toolbar → Current actions:
			```
			Switch color scheme
			Toggle paged mode
			Table of Contents
			Search
			Read aloud
			Lookup words
			```
	- Selection behavior
		- Current actions:
			```
			Looup/search selected word
			Read aloud
			Create a bookmark
			Highlight selection
			Remove this highlight
			```

### Read aloud

```sh
# Arch
yay -S --noconfirm piper-voices-en-us
```

- viewer → Toolbar → Read aloud → Configure
	- Text-to-Speech engine → `The Piper Neural Engine`.
	- Voices → English → `libritts (United States) [High quality]` → Download voice.

```admonish question
But I can't download voice successes. So I put files liked `en_US-libritts-high.onnx`, `en_US-libritts-high.onnx.json` into `~/.cache/calibre/piper-voices/`.
```

### Lookup words

Lookup words → Add sources → For example, Add:

```
Name: etymonline.com
URL: https://www.etymonline.com/search?q={word}
```

```
# https://github.com/Crissium/SilverDict
Name: silverdict_<dict_group>
URL: http://<your_host>:2628/api/query/<dict_group>/{word}
```

```
# https://github.com/open-webui/open-webui
Name: open-webui_librarian_zh
URL: http://<your_host>:<port>/?models=librarian%3Alatest-clone&q={word}
```

## usage

1. Calibre → Get books → Configure → `Project Gutenberg` (Enable).
2. Title → Entry `<book_name>` → Search.
3. Select a book → Enter → Check book format → Download.
4. Select book → View → View with calibre E-book viewer.

## reference

- [How To Install Calibre Server & Calibre Web On Ubuntu 22.04](https://kenfavors.com/code/how-to-install-calibre-server-calibre-web-on-ubuntu-22-04/)

## cross-reference

- [open-webui.md](/optWeb/open-webui.md)
- [silverdict.md](/srv/silverdict.md)
- [ebook-translator-calibre-plugin.md](/opt/calibre/ebook-translator-calibre-plugin.md)

## resource

### mark

- [ePub Extended Metadata](https://github.com/un-pogaz/ePub-Extended-Metadata)
- [K2pdfopt](https://www.mobileread.com/forums/showthread.php?t=358911)

### cache

- [calibre-douban](https://github.com/fugary/calibre-douban)
- [Markdown Output](https://www.mobileread.com/forums/showthread.php?p=3978884)
- [opds-reader](https://github.com/steinarb/opds-reader)
- [WordDumb](https://github.com/xxyzz/WordDumb)

[^1]: [linuxserver/calibre](https://docs.linuxserver.io/images/docker-calibre)
[^2]: [How To Enable Sidebar in Calibre Ebook Viewer](https://www.youtube.com/watch?v=rJfbcTlvujQ)
[^3]: [Adding Dictionary In Calibre Ebook](https://www.youtube.com/watch?v=_lN1N90c8zw)

![calibre](/_image/srv/calibre.png)
![lookup_01](/_image/opt/calibre/lookup_01.png)
![lookup_02](/_image/opt/calibre/lookup_02.png)

{% embed bilibili id="BV1BKYBzBEqU" loading="lazy" %}
