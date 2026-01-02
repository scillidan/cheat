# [Sourcebot](https://github.com/sourcebot-dev/sourcebot)

## install

[^1]

```sh
mkdir sourcebot
cd sourcebot
vim docker-compose.yml
```

```yaml
services:
  sourcebot:
    image: ghcr.io/sourcebot-dev/sourcebot:latest
    ports:
      - "3100:3100"
    restart: unless-stopped
```

```sh
sudo docker compose up -d
```

[^1]: [Getting Started](https://github.com/sourcebot-dev/sourcebot#getting-started)
