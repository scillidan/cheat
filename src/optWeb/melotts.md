# [MeloTTS](https://github.com/myshell-ai/MeloTTS)

![](https://img.shields.io/github/license/myshell-ai/MeloTTS)

## install

```sh
git clone --depth=1 https://github.com/myshell-ai/MeloTTS
uv venv --python 3.10
.venv\Scripts\activate.bat
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
uv pip install -e .
uv pip install hf_transfer
python -m unidic download
```

## usage

```sh
melo "Hello" temp.wav --language EN
melo --device cuda --language EN "<text>" temp.wav && ffplay -autoexit temp.wav
```

```sh
# With Web UI
python melo/app.py
```

## appdedix

![melotts](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/melotts.png)
