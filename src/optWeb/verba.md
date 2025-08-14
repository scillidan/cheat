# [Verba](https://github.com/weaviate/Verba)

![](https://img.shields.io/github/license/weaviate/Verba)

## install

```sh
git clone --depth=1 https://github.com/weaviate/Verba
cd Verba
vim .env
```

```
OLLAMA_URL=http://<ollama_host>:11434
OLLAMA_MODEL=llama3.1
OLLAMA_EMBED_MODEL=mxbai-embed-large
```

## usage

```sh
sudo docker compose --env-file .env up -d --build
```
