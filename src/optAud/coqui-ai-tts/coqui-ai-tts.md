# [coqui-ai-TTS](https://github.com/idiap/coqui-ai-TTS)

## install

```sh
git clone --depth=1 https://github.com/idiap/coqui-ai-TTS
uv venv --python 3.12
.venv\Scripts\activate.bat
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu129
uv pip install -e .
```

```sh
tts --list_models
tts --model_name "tts_models/multilingual/multi-dataset/xtts_v2" --list_language_idxs
tts --model_name "tts_models/multilingual/multi-dataset/xtts_v2" --list_speaker_idxs
```

## usage

```sh
# Female, low voice
tts --device cuda --model_name "tts_models/multilingual/multi-dataset/xtts_v2" --speaker_idx "Suad Qasim" --language_idx "en" --text "<text>" --out_path temp.wav
# Male, low voice
tts --device cuda --model_name "tts_models/multilingual/multi-dataset/xtts_v2" --speaker_idx "Zacharie Aimilios" --language_idx "en" --text "<text>" --out_path temp.wav
```

## annex

- [example_TTS](https://github.com/scillidan/example_TTS)
- [venv_tts_speaker.sh](https://github.com/scillidan/Shell/blob/main/opt/venv_tts_speaker.sh)