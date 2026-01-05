# [coqui-ai-TTS](https://github.com/idiap/coqui-ai-TTS)

## install

```sh
git clone --depth=1 https://github.com/idiap/coqui-ai-TTS
uv venv --python 3.10
.venv\Scripts\activate
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
uv pip install -e .
```

```sh
# set ESPEAK_DATA_PATH=<path_to>\espeak-ng-data
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

## troubleshoot

- [[Windows] Use "libespeak-ng.dll" without setting Path for "espeak-ng-data" in registry ](https://github.com/espeak-ng/espeak-ng/issues/1159)

## annex

- [example_TTS](https://github.com/scillidan/example_TTS)
- [venv_tts_speaker.sh](https://github.com/scillidan/Shell/blob/main/opt/venv_tts_speaker.sh)