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


## annexs

![ballonstranslator](/_image/opt/ballonstranslator.png)

- [ballonstranslator_sakurallm.mp4](https://scillidan.github.io/media_cheat/opt/ballonstranslator_sakurallm.mp4) ([bilibili](https://www.bilibili.com/video/BV1zf421S7gY))
- [ballonstranslator_deeplx.mp4](https://scillidan.github.io/media_cheat/opt/ballonstranslator_deeplx.mp4) ([bilibili](https://www.bilibili.com/video/BV1zw4m117Ak))
