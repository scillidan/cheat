# [MarkItDown](https://github.com/microsoft/markitdown)

## install

```sh
git clone --depth=1 https://github.com/microsoft/markitdown
cd markitdown
uv venv --python 3.12
.venv\Scripts\activate.bat
uv pip install -e "packages/markitdown[all]"
```

```sh
# Arch
rm ~/.local/bin/markitdown
ln -sfn $(pwd)/.venv/Scripts/markitdown ~/.local/bin/markitdown
# Window 10
rm %USERPROFILE%\.local\bin\markitdown.exe
mklink %USERPROFILE%\.local\bin\markitdown.exe %CD%\.venv\Scripts\markitdown.exe
```

```sh
# Update
git pull
.venv\Scripts\activate.bat
uv pip install -e "packages/markitdown[all]"
```

## usage

```sh
markitdown file.pdf -o file.md
markitdown file.epub -o file.md
```
