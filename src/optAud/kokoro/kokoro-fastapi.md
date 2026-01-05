# [FastKokoro](https://github.com/remsky/Kokoro-FastAPI)

## install

[^1]

```sh
git clone --depth=1 https://github.com/remsky/Kokoro-FastAPI
cd Kokoro-FastAPI
```

### Windows 10

```sh
scoop install espeak-ng
```

```sh
uv venv --python 3.10
.venv\Scripts\activate
# set PHONEMIZER_ESPEAK_LIBRARY="<path_to>\libespeak-ng.dll"
# set PHONEMIZER_ESPEAK_PATH="<path_to>\espeak-ng.exe"
set PYTHONUTF8=1
set PROJECT_ROOT=%cd%
set USE_GPU=true
set USE_ONNX=false
set PYTHONPATH=%PROJECT_ROOT%;%PROJECT_ROOT%\api
set MODEL_DIR=src\models
set VOICES_DIR=src\voices\v1_0
set WEB_PLAYER_PATH=%PROJECT_ROOT%\web
uv pip install torch --index-url https://download.pytorch.org/whl/cu129
uv pip install -e ".[gpu]"
```

### Ubuntu 24 ARM

```sh
sudo apt install ffmpeg espeak-ng
```

```sh
uv venv --python 3.10
source .venv/Scripts/activate
export PYTHONUTF8=1
export PROJECT_ROOT=$(pwd)
export USE_GPU=true
export USE_ONNX=false
export PYTHONPATH=$PROJECT_ROOT:$PROJECT_ROOT/api
export MODEL_DIR=src/models
export VOICES_DIR=src/voices/v1_0
export WEB_PLAYER_PATH=$PROJECT_ROOT/web
uv pip install -e .
```

```sh
uv run python docker/scripts/download_model.py --output api/src/models/v1_0
uv run uvicorn api.src.main:app --host 0.0.0.0 --port 8880
```

[^1]: [start-gpu.ps1](https://github.com/remsky/Kokoro-FastAPI/blob/master/start-gpu.ps1)

## annex

- [start_kokoro-fastapi.sh](https://github.com/scillidan/Shell/blob/main/opt/start_kokoro-fastapi.sh)

## appdedix

![kokoro-fastapi](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/kokoro-fastapi.png)
