# [Local RAG Chatbot](https://github.com/datvodinh/rag-chatbot)

![](https://img.shields.io/github/license/datvodinh/rag-chatbot)

## install

```sh
# scoop install ollama ngrok
git clone --depth=1 https://github.com/datvodinh/rag-chatbot
cd rag-chatbot
uv venv
.venv\Scripts\activate.bat
uv pip install -e .
```

## usage

```sh
uv pip install hf_transfer
python -m rag_chatbot --host localhost & ngrok http 4321
```

![rag-chatbot](/_image/optWeb/rag-chatbot.png)
