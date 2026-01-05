# [OpenCC](https://github.com/BYVoid/OpenCC)

## install

```sh
# Arch
sudo pacman -S opencc
```

### uv

```sh
# Windows 10
uv venv .opencc --python 3.10
.opencc\Scripts\activate
uv pip install opencc
```

## usage

```sh
# Arch
opencc -c /usr/share/opencc/t2s.json -i input.txt -o output.txt
# Windows 10
.opencc\Lib\site-packages\opencc\clib\bin\opencc -c .opencc/Lib/site-packages/opencc/clib/share/opencc/t2s.json -i input.txt -o output.txt
```
