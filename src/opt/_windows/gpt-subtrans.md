# [GPT-Subtrans](https://github.com/machinewrapped/gpt-subtrans)

![](https://img.shields.io/github/license/machinewrapped/gpt-subtrans)

## install

```sh
git clone --depth=1 https://github.com/machinewrapped/gpt-subtrans
uv venv
.venv\Scripts\activate.bat
uv pip install -r requirements.txt
scripts\generate-cmd.bat gui-subtrans
scripts\generate-cmd.bat llm-subtrans
```

## usage

```sh
gui-subtrans
```

## optional

- Settings → Processing
	- Preprocess Subtitles (On)
	- Postprocess Translation (On)
	- Save Preprocessed Subtitles (On)

## usage

- Open file → Select `<subtitle>` → Project Settings → Entry `Movie Name`, `Target Language` → Start.

## appdedix

![gpt-subtrans](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/opt/gpt-subtrans.png)
