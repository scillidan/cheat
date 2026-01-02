# [zeal-lynx-cli](https://github.com/Sanix-Darker/zeal-lynx-cli)

## install

```sh
git clone --depth=1 https://github.com/Sanix-Darker/zeal-lynx-cli
uv venv
.venv\Scripts\activate.bat
uv pip install argparse xdg==5.1.1 pathlib bs4
```

## usage

```sh
# Put docset files into C:\Users\User\Scoop\apps\zeal\current\docsets\Vim.docset\Contents\Resources\Documents
python zeal-cli --zeal-prefix C:\Users\User\Scoop\apps\zeal\current vim arabic
```
