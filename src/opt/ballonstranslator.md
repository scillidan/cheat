# [BallonsTranslator](https://github.com/dmMaze/BallonsTranslator)

> 深度学习辅助漫画翻译工具，支持一键机翻和简单的图像/文本编辑。 [dmMaze/BallonsTranslator]

> Yet another computer-aided comic/manga translation tool powered by deep learning. [dmMaze/BallonsTranslator]

## install

```sh
git clone --depth=1 https://github.com/dmMaze/BallonsTranslator
cd BallonsTranslator
uv venv
.venv\Scripts\activate.bat
uv python install 
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
uv pip install -r requirements.txt
```

## usage

```sh
python launch.py
```

## config

- Setting
	- DL Module → Translator
	- General → Typesetting → Auto layout (Off)

## annex

```batch
rem start_ballonstranslator.bat
@echo off

cd C:\Users\User\Usr\OptWeb\SakuraLLM
start .venv\Scripts\python.exe server.py --trust_remote_code --model_name_or_path models/sakura-13b-lnovel-v0.9b-Q2_K.gguf --model_version 0.9 --no-auth --llama_cpp --use_gpu --log debug

cd C:\Users\User\Usr\OptWeb\BallonsTranslator
start .venv\Scripts\python.exe launch.py

pause
```

## appdedix

![ballonstranslator](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/opt/ballonstranslator.png)

- [ballonstranslator_sakurallm.mp4](https://scillidan.github.io/media_cheat/opt/ballonstranslator_sakurallm.mp4)
- [ballonstranslator_deeplx.mp4](https://scillidan.github.io/media_cheat/opt/ballonstranslator_deeplx.mp4)
