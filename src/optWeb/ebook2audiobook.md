# [ebook2audiobook](https://github.com/DrewThomasson/ebook2audiobook)

![](https://img.shields.io/github/license/DrewThomasson/ebook2audiobook)

## install

```sh
git clone --depth=1 https://github.com/DrewThomasson/ebook2audiobook
cd ebook2audiobook
# set PYTHONUTF8=1
# set PYTHONIOENCODING=utf-8
# uv pip install -r requirements.txt
# # uv pip install coqui-tts==0.24.2 pydub nltk beautifulsoup4 ebooklib tqdm gradio==4.44.0
# python -m nltk.downloader punkt
# python -m nltk.downloader punkt_tab
# uv pip install mecab mecab-python3 unidic
# python -m unidic download
set %CUDA_PATH%=%CUDA_PATH_V12_4%
ebook2audiobook.cmd
conda activate <path_to>\ebook2audiobook\python_env
pip install hf_transfer
pip install --upgrade rich
conda install espeak-ng
pip install pyttsx3
pip install phonemizer
pip install speechbrain==1.0.0
set HF_HUB_ENABLE_HF_TRANSFER=0
ebook2audiobook.cmd --headless --ebook <path_to>\file.txt --language en --custom_model <path_to>\xtts_v2\MelinaEldenRing
```

## usage

```sh
python app.py
```

```sh
python app.py --headless True --use_custom_model True --ebook <ebook_file_path> --voice <target_voice_file_path> --language <language> --custom_model <custom_model_path> --custom_config <custom_config_path> --custom_vocab <custom_vocab_path>
```

## appdedix

![ebook2audiobook](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/ebook2audiobook.png)
