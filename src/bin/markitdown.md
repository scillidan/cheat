# [MarkItDown](https://github.com/microsoft/markitdown)

## install

```sh
git clone --depth=1 https://github.com/microsoft/markitdown
cd markitdown
uv venv --python 3.12
.venv\Scripts\activate.bat
uv pip install -e "packages/markitdown[all]"
```

## usage

```sh
markitdown file.pdf -o file.md
```
