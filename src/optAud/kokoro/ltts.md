# [ltts](https://github.com/fcjr/ltts)

## install

```sh
git clone --depth=1 https://github.com/fcjr/ltts
cd ltts
uv venv .venv --python 3.12
.venv\bin\activate.bat
uv pip install hf_transfer hf-xet
uv sync
```

## usage

```sh
ltts "your text here" -v af_bella --say
ltts "your text here" -v af_bella -o speech.mp3
```