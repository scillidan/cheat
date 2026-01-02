# [epub2tts](https://github.com/aedocw/epub2tts)

## install

```sh
git clone --depth=1 https://github.com/aedocw/epub2tts
cd epub2tts
uv venv --python 3.11
.venv\Scripts\activate.bat
uv pip install torch torchaudio --index-url https://download.pytorch.org/whl/cu129
uv pip install coqui-tts --only-binary spacy
uv pip install -e .
```

## usage

```sh
epub2tts <epub> --export txt
epub2tts <txt> --engine tts --speaker "<Speaker>" --cover cover-image.jpg --sayparts
```

## troubleshoot

Edit `requirements.txt`[^1]:

```
# deepspeed
```

[^1]: ["Unable to import torch" error on Windows](https://github.com/aedocw/epub2tts/issues/218)
