# [Perplexica](https://github.com/ItzCrazyKns/Perplexica)

![](https://img.shields.io/github/license/ItzCrazyKns/Perplexica)

## install

[^1]

```sh
git clone --depth=1 https://github.com/ItzCrazyKns/Perplexica
cd Perplexica
```

```sh
# From source
cd ui
cp .env.example .env
npm install
npm run build
cd ..
cp sample.config.toml config.toml
npm install
npm run build
```

[^2]

```sh
# Docker compose
cp sample.config.toml config.toml
sudo docker compose up -d
```

## optional

```sh
subl config.toml
```

```toml
[API_ENDPOINTS]
OLLAMA = "http://127.0.0.1:11434"
```

[^1]: [How to Contribute to Perplexica](https://github.com/ItzCrazyKns/Perplexica/blob/master/CONTRIBUTING.md)
[^2]: [Getting Started with Docker (Recommended)](https://github.com/ItzCrazyKns/Perplexica#getting-started-with-docker-recommended)

![perplexica](/_image/optWeb/perplexica.png)
![perplexity](/_image/optWeb/perplexity.png)
