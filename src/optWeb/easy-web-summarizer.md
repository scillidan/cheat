# [Easy Webpage Summarizer](https://github.com/cobanov/easy-web-summarizer)

![](https://img.shields.io/github/license/cobanov/easy-web-summarizer)

## install

```sh
git clone --depth=1 https://github.com/cobanov/easy-web-summarizer
cd easy-web-summarizer
uv venv
.venv\Scripts\activate.bat
uv pip install -r requirements.txt
ollama pull llama3:instruct
```

## usage

```sh
## As CLI
python app/webui.py -u <url>
```

```sh
## As GUI
python app/webui.py
```

## appdedix

![easy-web-summarizer](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/easy-web-summarizer.png)
