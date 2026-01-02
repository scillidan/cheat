# [Kokoro TTS](https://github.com/nazdridoy/kokoro-tts)

## install

```sh
# Pip
uv tool install kokoro-tts --python 3.12
```

1. Download voice data (bin format is preferred) from [here](https://github.com/nazdridoy/kokoro-tts/releases/download/v1.0.0/voices-v1.0.bin)
2. Download the model from [here](https://github.com/nazdridoy/kokoro-tts/releases/download/v1.0.0/kokoro-v1.0.onnx)

## [usage](https://github.com/nazdridoy/kokoro-tts#usage)

```sh
echo "Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, “and what is the use of a book,” thought Alice “without pictures or conversations?”" | kokoro-tts - --stream --voice "af_bella" --voices <path_to>\voices-v1.0.bin --model <path_to>\kokoro-v1.0.onnx
```