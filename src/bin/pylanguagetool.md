# [pyLanguagetool](https://github.com/Findus23/pyLanguagetool)

## install

```sh
# uv (Windows 10)
uv venv .pyLanguagetool
.pyLanguagetool\Scripts\activate.bat
uv pip install --upgrade setuptools beautifulsoup4 pylanguagetool
mklink %USERPROFILE%\.local\bin\pylanguagetool.exe %CD%\.pyLanguagetool\Scripts\pylanguagetool.exe
deactivate.bat
```

```sh
# uv (Arch)
uv venv .pyLanguagetool
source .pyLanguagetool/bin/activate
uv pip install --upgrade setuptools beautifulsoup4 pyLanguagetool
ln -sfn "$(pwd)/.pyLanguagetool/bin/pylanguagetool" ~/.local/bin/pylanguagetool
deactivate.bat
```

## usage

```sh
echo "This are a exampl" | pylanguagetool --lang en-US
```
