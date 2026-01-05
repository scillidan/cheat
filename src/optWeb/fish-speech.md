# [Fish Speech](https://github.com/fishaudio/fish-speech)

[^1] [^2]

![](https://img.shields.io/github/license/fish-speech/fish-speech)

## install

```sh
git clone --depth=1 https://github.com/fishaudio/fish-speech
cd fish-speech
uv venv --python 3.12
.venv\Scripts\activate
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
uv pip install https://github.com/AnyaCoder/fish-speech/releases/download/v0.1.0/triton_windows-0.1.0-py3-none-any.whl
uv pip install -e .
uv pip install hf_transfer
```

1. Create folder `checkpoints/`.
2. Download [fishaudio/openaudio-s1-mini](https://huggingface.co/fishaudio/openaudio-s1-mini/tree/main) into `checkpoints\openaudio-s1-mini`.

## usage

```sh
# As GUI
python -m tools.run_webui --llama-checkpoint-path "checkpoints/openaudio-s1-mini" --decoder-checkpoint-path "checkpoints/openaudio-s1-mini/codec.pth" --decoder-config-name modded_dac_vq
```

If serve port used, edit `API_FLAGS.txt`.

## reference

- [Command Line Inference](https://github.com/fishaudio/fish-speech/blob/main/docs/en/inference.md#command-line-inference)

[^1]: [install.md](https://github.com/fishaudio/fish-speech/blob/main/docs/en/install.md)
[^2]: [inference.md](https://github.com/fishaudio/fish-speech/blob/main/docs/en/inference.md)

## appdedix

![fish-speech](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/fish-speech.png)
