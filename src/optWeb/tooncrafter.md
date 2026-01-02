# [ToonCrafter](https://github.com/Doubiiu/ToonCrafter)

![](https://img.shields.io/github/license/Doubiiu/ToonCrafter)

## install

```sh
git clone --depth=1 https://github.com/sdbds/ToonCrafter-for-windows
# pyenv install 3.8.10
# pyenv shell 3.8.10
# python -m venv venv
# venv\Scripts\activate.bat
uv venv --python 3.8.20
.venv\Scripts\activate.bat
uv pip install -r requirements-windows.txt
```

1. Get `model.ckpt` from [Doubiiu/ToonCrafter](https://huggingface.co/Doubiiu/ToonCrafter/tree/main)[^1].
2. Put it into `checkpoints\tooncrafter_512_interp_v1\model.ckpt`.

## usage

```sh
set XFORMERS_FORCE_DISABLE_TRITON="1"
python gradio_app.py
```

## reference

### cache

- [ToonCrafter](https://github.com/sdbds/ToonCrafter-for-windows)

[^1]: [[bug]: Error caught was: No module named 'triton'](https://github.com/invoke-ai/InvokeAI/issues/2611)

## appdedix

![tooncrafter](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/tooncrafter.png)
