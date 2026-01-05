# [Khoj](https://github.com/khoj-ai/khoj)

![](https://img.shields.io/github/license/khoj-ai/khoj)

## usage

```sh
# Pip
uv venv
.venv\Scripts\activate
set CMAKE_ARGS="-DGGML_CUDA=on"
uv pip install "khoj[local]"
set USE_EMBEDDED_DB="true"
khoj --anonymous-modes
```

[^1]

```sh
# Docker compose
mkdir khoj
cd khoj
wget https://raw.githubusercontent.com/khoj-ai/khoj/master/docker-compose.yml
sudo docker compose up -d
```

[^1]: [Khoj - Self-Host](https://docs.khoj.dev/get-started/setup/?server=docker&os=linux)
