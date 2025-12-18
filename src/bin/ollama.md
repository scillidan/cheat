# [Ollama](https://ollama.com/)

## install

```sh
# Windows 10
scoop install ollama-full
```

## usage

```sh
ollama pull llama3.1
ollama pull qwen2.5-coder:3b
# ollama pull qwen2.5-coder:7b
ollama pull qwen3:14b
ollama pull nomic-embed-text
ollama list
```

## config

[^1]

Add into environment:

```
OLLAMA_HOST=0.0.0.0
OLLAMA_ORIGINS=*
```

## reference

- #blog [Navigating the World of Open-Source Large Language Models]https://www.bentoml.com/blog/navigating-the-world-of-large-language-models)

[^1]: [Ollama Connection issues FAQ help](https://github.com/Mintplex-Labs/anything-llm/issues/1640)
