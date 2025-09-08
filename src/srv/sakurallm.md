# [SakuraLLM](https://github.com/SakuraLLM/SakuraLLM)

> SFT And RLHF models using Knowledge of Universal Character and Relationship Attributes for Japanese to Chinese Translation in Light Novel & Galgame Domain. [SakuraLLM/SakuraLLM]

> SFT和RLHF模型利用通用角色和关系属性的知识进行轻小说和美少女游戏领域的日译中翻译。 [SakuraLLM/SakuraLLM]

## install

```sh
git clone --depth=1 https://github.com/SakuraLLM/SakuraLLM
cd SakuraLLM
uv pip install torch torchvision torchaudio xformers --index-url https://download.pytorch.org/whl/cu121
uv pip install -r requirements.llamacpp.txt
uv pip install llama-cpp-python --extra-index-url https://abetlen.github.io/llama-cpp-python/whl/cu121
```

1. Here, I download `q2k` of [Sakura-14B-Qwen2beta-v0.9.2-GGUF](https://huggingface.co/SakuraLLM/Sakura-14B-Qwen2beta-v0.9.2-GGUF).
2. Put the files into `models/`.

## usage

[^1] [^2]

```sh
# As API
python server.py --trust_remote_code --model_name_or_path models/sakura-13b-lnovel-v0.9b-Q2_K.gguf --model_version 0.9 --no-auth --llama_cpp --use_gpu --log debug
```

```sh
# As CLI
# txt
python translate_novel.py --trust_remote_code --model_name_or_path models/sakura-13b-lnovel-v0.9b-Q2_K.gguf --model_version 0.9 --no-auth --llama_cpp --use_gpu --log debug --text_length 512 --data_path <novel.txt> --output_path <novel_translated.txt>
# epub
python translate_epub.py --trust_remote_code --model_name_or_path models/sakura-13b-lnovel-v0.9b-Q2_K.gguf --model_version 0.9 --no-auth --llama_cpp --use_gpu --log debug --text_length 512 --data_path <novel.epub> --output_folder <novel_epub>
```

[^1]: [Sakura模型部署教程-本地运行-Transformers模型](https://github.com/SakuraLLM/tutorial/blob/main/tutorial-local-transformers.md)
[^2]: [各种推理引擎的使用说明](https://github.com/SakuraLLM/SakuraLLM/blob/main/usage.md)

## annex

[sakurallm.mp4](https://scillidan.github.io/media_cheat/srv/sakurallm.mp4), ([bilibili](https://www.bilibili.com/video/BV1V1421X7zL))
