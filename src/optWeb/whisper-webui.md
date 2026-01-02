# [Whisper-WebUI](https://github.com/jhj0517/Whisper-WebUI)

![](https://img.shields.io/github/license/jhj0517/Whisper-WebUI)

## install

```sh
git clone --depth=1 https://github.com/jhj0517/Whisper-WebUI
cd Whisper-WebUI
uv venv
.venv\Scripts\activate.bat
uv pip install torch torchaudio --index-url https://download.pytorch.org/whl/cu121
uv pip install -r requirements.txt
uv pip install hf_transfer
subl user-start-webui.bat
```

```sh
# The modified lines, for example
set SERVER_NAME=127.0.0.1
set SERVER_PORT=7861
set WHISPER_TYPE=faster-whisper
set FASTER_WHISPER_MODEL_DIR="<path_to>\Simple_Speech_Recognition\modelsCache"
set INSANELY_FAST_WHISPER_MODEL_DIR="C:\Users\User\Downloads"
set DIARIZATION_MODEL_DIR="<path_to>\Whisper-WebUI\models"
```

## usage

```
user-start-webui.bat
```

## appdedix

![whisper-webui](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/whisper-webui.png)
