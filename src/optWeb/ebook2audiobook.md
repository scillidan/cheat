# [ebook2audiobook](https://github.com/DrewThomasson/ebook2audiobook)

![](https://img.shields.io/github/license/DrewThomasson/ebook2audiobook)

## install

```sh
git clone --depth=1 https://github.com/DrewThomasson/ebook2audiobook
cd ebook2audiobook
set %CUDA_PATH%=%CUDA_PATH_V12_4%
ebook2audiobook.cmd
python_env\python.exe -m pip install --no-cache-dir torch==2.6.0 torchaudio==2.6.0 --force-reinstall --index-url https://download.pytorch.org/whl/cu124
python_env\python.exe -m pip install hf_transfer
set HF_HUB_ENABLE_HF_TRANSFER=0
# Test it as CLI
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
