# [insanely-fast-whisper-cli](https://github.com/ochen1/insanely-fast-whisper-cli)

## install

```sh
git clone --depth=1 https://github.com/ochen1/insanely-fast-whisper-cli
cd insanely-fast-whisper-cli
uv venv
.venv\Scripts\activate
uv pip install -r requirements.txt
```

## usage

```sh
python insanely-fast-whisper.py --model openai/whisper-base --device cuda:0 --dtype float32 --batch-size 8 --better-transformer --chunk-length 30 <audio_file>.wav
```
