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
.opencc\Scripts\activate.bat
mklink %USERPROFILE%\.local\bin\opencc.exe %CD%\.opencc\Lib\site-packages\opencc\clib\bin\opencc.exe
deactivate.bat
```
