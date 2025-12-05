# [ShellGPT](https://github.com/TheR1D/shell_gpt)

## install

[^1]

```sh
ollama pull mistral:7b-instruct
# ollama pull llama3.1:8b
uv tool install "shell-gpt[litellm]"
```

```sh
subl C:\Users\User\.config\shell_gpt\.sgptrc
```

```
DEFAULT_MODEL=ollama/mistral:7b-instruct
# DEFAULT_MODEL=ollama/llama3.1:8b
OPENAI_USE_FUNCTIONS=false
USE_LITELLM=true
```

## usage

```sh
sgpt "Hello Ollama"
sgpt "Resize images to 800x 0.9 quality jpg"
cat <code_file> | sgpt --code "Generate comments for each line of my code"
```

[^1]: [Ollama](https://github.com/TheR1D/shell_gpt/wiki/Ollama#shellgpt-configuration)