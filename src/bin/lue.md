# [Lue](https://github.com/superstarryeyes/lue)

## install

```sh
git clone --depth=1 https://github.com/superstarryeyes/lue
cd lue
uv venv .venv --python 3.10
source .venv/bin/activate
uv pip install torch torchvision torchaudio
uv pip install -r requirements.txt
uv pip install -e .
deactivate
ln -sfn $(pwd)/lue ~/.local/bin/lue
```

## usage

```sh
lue <book>
```
