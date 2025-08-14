# [changedetection.io](https://github.com/dgtlmoon/changedetection.io)

![](https://img.shields.io/github/license/dgtlmoon/changedetection.io)

## install

```sh
git clone --depth=1 https://github.com/dgtlmoon/changedetection.io
cd changedetection.io
uv venv
.venv\Scripts\activate.bat
uv pip install -e .
```

## usage

```sh
python changedetection.py
# pm2 start changedetection.py --name changedetection --interpreter ".venv/Scripts/python.exe" --cwd "changedetection.io"
```

![changedetection](/_image/optWeb/changedetection.png)
