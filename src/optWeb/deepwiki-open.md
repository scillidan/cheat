# [DeepWiki-Open](https://github.com/AsyncFuncAI/deepwiki-open)

## install

### From source

```sh
git clone --depth=1 https://github.com/AsyncFuncAI/deepwiki-open
cd deepwiki-open
```

```sh
vim .env
```

```
GOOGLE_API_KEY=<your_google_api_key>
OPENAI_API_KEY=<your_openai_api_key>
OLLAMA_HOST=<your_ollama_host>
```

```sh
uv venv
source .venv/bin/activate
uv pip install poetry==1.8.2 && poetry install -C api
python -m api.main
```

```sh
# In a new terminal session
npm install
npm run build
npm start
```

## appdedix

![deepwiki-open](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/deepwiki-open.png)