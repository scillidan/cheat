# [LanguageTool](https://languagetool.org)

> LanguageTool is an advanced AI-based writing assistant and text editor designed to improve writing quality. It goes beyond simple spelling and grammar checking by offering features like:  
> - Detection and correction of grammar, spelling, and punctuation errors  
> - Style improvements, including suggestions to avoid overused or redundant words  
> - Support for more than 20 languages  
> - Fixing formatting inconsistencies such as times, numbers, and currency  
> - Personalized features like a personal dictionary and style guide  
> - Integration with various platforms and applications, including web browsers, Microsoft Word, Google Docs, LibreOffice, and more  
> - An online editor and browser extensions to check text while typing on the web  
> - Advanced AI and open-source technology behind it  
> - Premium options with enhanced error detection, unlimited rephrasing, and team collaboration features  
> It is available as free and premium versions, with the core being open-source and downloadable for offline use. LanguageTool is designed to help users write precisely, clearly, and stylishly across different types of texts and languages.  
> In short, LanguageTool is a comprehensive grammar, style, and spell checker that acts as a powerful writing assistant to make your writing error-free and polished.  [perplexity.ai]

> LanguageTool是一款先进的基于AI的写作助手和文本编辑器，旨在提高写作质量。它超越了简单的拼写和语法检查，提供以下功能：  
> - 检测和修正语法、拼写和标点错误  
> - 风格改进，包括避免使用过多或冗余词汇的建议  
> - 支持超过20种语言  
> - 修复时间、数字和货币等格式不一致  
> - 个性化功能，如个人词典和风格指南  
> - 与各种平台和应用的集成，包括网络浏览器、Microsoft Word、Google Docs、LibreOffice等  
> - 在线编辑器和浏览器扩展，在线输入时进行文本检查  
> - 背后的先进AI技术和开源技术  
> - 付费选项包括增强的错误检测、无限重写和团队协作功能  
> 它有免费的和付费的版本，核心功能为开源，可离线下载使用。LanguageTool旨在帮助用户在不同类型的文本和语言中写作精准、清晰和风格优雅。  
> 简而言之，LanguageTool是一个全面的语法、风格和拼写检查工具，作为强大的写作助手，帮助您使写作无误且精练。 [perplexity.ai]

## install

### Ubuntu 22 ARM

[^1] [^2] [^3]

Decompress `ngrams-en-*.zip` to `/mnt/<disk>/share/ngrams/`.

```sh
sudo apt install openjdk-21-jdk
sudo unzip LanguageTool-stable.zip
sudo mv LanguageTool-* /opt/languagetool
```

```sh
sudo apt install make g++
git clone --depth=1 https://github.com/facebookresearch/fastText
cd fastText
make
sudo vim /opt/languagetool/server.properties
```

```
fasttextModel=fasttext/lid.176.bin
fasttextBinary=fasttext/fasttext
```

```sh
sudo vim /etc/systemd/system/languagetool.service
```

```
[Unit]
Description=LanguageTool Service
After=network.target

[Service]
ExecStart=java -cp /opt/languagetool/languagetool-server.jar org.languagetool.server.HTTPServer --languagemodel /mnt/<nvme>/share/ngrams --port 8040 --allow-origin --public
WorkingDirectory=/opt/languagetool
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl enable --now languagetool.service
```

1. Get `ngrams-en-*.zip` from [here](https://languagetool.org/download/ngram-data/).
2. Get `LanguageTool Desktop version for offline use` from [LanguageTool embedded HTTP Server](https://dev.languagetool.org/http-server).

### Windows 10

1. Install [OpenJDK](https://jdk.java.net)，I tested it on [openjdk17](https://jdk.java.net/17/).
2. Decompress `ngrams-en-*.zip` to `ngrams/`.
3. Decompress `LanguageTool-stable.zip` to `LanguageTool/`.

```sh
unzip LanguageTool-stable.zip
java.exe -cp LanguageTool\languagetool-server.jar org.languagetool.server.HTTPServer --languagemodel <ngrams_dir> --port <port> --allow-origin
```

For running it liked service, create `languagetool_service.cmd` from the command above. Then create `languagetool_service.vbs`:

```
Set WshShell = CreateObject("WScript.Shell")
	WshShell.Run chr(34) & "languagetool_service.cmd" & Chr(34), 0
Set WshShell = Nothing
```

Create shortcut of `languagetool_service.vbs`, put it into `C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\`.

## Browser Extension

1. Install [Browser Extension](https://languagetool.org/services#browsers).
2. Browser Extension → Settings → Advanced settings → Other server → `http://<your_host>:<port>/v2`.
3. General settings → Show in right-click menu (On).

[^1]: [LanguageTool embedded HTTP Server](https://dev.languagetool.org/http-server)
[^2]: [Anyone self-hosting languagetool?](https://www.reddit.com/r/selfhosted/comments/ksvmii/anyone_selfhosting_languagetool/)
[^3]: [Finding errors using n-gram data](https://dev.languagetool.org/finding-errors-using-n-gram-data)

## appdedix

- [languagetool.mp4](https://scillidan.github.io/media_cheat/opt/Browser/languagetool.mp4)
