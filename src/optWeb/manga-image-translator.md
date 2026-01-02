# [Image/Manga Translator](https://github.com/zyddnys/manga-image-translator)

![](https://img.shields.io/github/license/zyddnys/manga-image-translator)

## install

```sh
git clone --depth=1 https://github.com/zyddnys/manga-image-translator
python -m venv venv
venv\Scripts\activate.bat
pip install torch torchvision --index-url https://download.pytorch.org/whl/cu121
pip install -r requirements.txt
```

## usage

```sh
python -m manga_translator -v --mode web --use-gpu
```

## optional

```sh
subl .env
```

```
# Change port
SAKURA_API_BASE=http://127.0.0.1:5000
```

## appdedix

![manga-image-translator](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/manga-image-translator.png)
