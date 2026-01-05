# [edge-tts](https://github.com/rany2/edge-tts)

> edge-tts is an open‑source Python project that lets you use Microsoft Edge’s online text‑to‑speech (TTS) service without needing Edge, Windows, or an API key. [perplexity.ai]

> 一个 Python 库，让你无需安装 Microsoft Edge 或 Windows 系统，也无需 API 密钥，即可使用微软 Edge 的在线文本转语音服务。 [perplexity.ai]

## install

```sh
# Pip
uv tool install edge-tts
```

## usage

```sh
edge-playback --text "Hello, world!"
```

```sh
edge-tts --list-voices
edge-playback --voice en-US-AndrewMultilingualNeural --text "Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, “and what is the use of a book,” thought Alice “without pictures or conversations?”"
```

## reference

- #guide [How I Used Edge-TTS to Build a Free Online Text-to-Speech Site](https://dev.to/alixwang/how-i-used-edge-tts-to-build-a-free-online-text-to-speech-site-47n9)

## asset

- [Free Text to Speech Online](https://tts-free.online/en)

## annex

- [example_edge-tts](https://github.com/scillidan/example_edge-tts)