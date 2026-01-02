# [Kokoro TTS Local](https://github.com/PierrunoYT/Kokoro-TTS-Local)

![](https://img.shields.io/github/license/PierrunoYT/Kokoro-TTS-Local)

## install

```sh
git clone --depth=1 https://github.com/PierrunoYT/Kokoro-TTS-Local
cd Kokoro-TTS-Local
python -m venv venv
venv\Scripts\activate.bat
pip install torch --index-url https://download.pytorch.org/whl/cu121
pip install -r requirements.txt
pip install hf_transfer
```

## usage

```sh
## As CLI
python tts_demo.py
```

```sh
## As Web UI
pip install ordered_set pypinyin cn2an jieba
python gradio_interface.py
```

## appdedix

![kokoro-tts-local](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/kokoro-tts-local.png)
