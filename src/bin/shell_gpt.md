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
sgpt --model ollama/mistral:7b-instruct "Resize images to 800x 0.9 quality jpg"
cat <code_file> | sgpt --model ollama/mistral:7b-instruct --code "Generate comments for each line of my code"
```

```sh
# Test
sgpt --model ollama/mistral:7b-instruct --role explain "magick convert -resize 800x image.jpg -quality 90 resized_image.jpg"
sgpt --model ollama/mistral:7b-instruct --role optimize "Resize images to 800x 0.9 quality jpg"
sgpt --model ollama/mistral:7b-instruct --role summarize "Please resize all images to a maximum width of 800 pixels and save them in JPEG format with a compression quality of 0.9."
sgpt --model ollama/llama3.1:8b --role adcopy "Resizing images for web use, specifically reducing their width to 800 pixels, saving them as JPEGs with a compression quality of 0.9."
```

[^1]: [Ollama](https://github.com/TheR1D/shell_gpt/wiki/Ollama#shellgpt-configuration)
