# [Ollama Deep Researcher](https://github.com/langchain-ai/ollama-deep-researcher)

![](https://img.shields.io/github/license/langchain-ai/ollama-deep-researcher)

## install

```sh
git clone --depth=1 https://github.com/langchain-ai/ollama-deep-researcher
cd ollama-deep-researcher
cp .env.example .env
uv venv --python 3.11
.venv\Scripts\activate.bat
uv pip install -e .
uv pip install -U "langgraph-cli[inmem]"
```

## usage

```sh
langgraph dev
```

![ollama_deep_researcher](/_image/optWeb/ollama_deep_researcher.png)
