# [n8n](https://n8n.io/)

## install

[^1]

```sh
mkdir n8n
cd n8n
vim docker-compose.yml
# Copy from https://docs.n8n.io/hosting/installation/server-setups/docker-compose/#5-create-docker-compose-file
```

```yaml
services:
  traefik:
    command:
      # If serve port is already used, edit liked
      - "--entrypoints.web.address=:8070"
      - "--entrypoints.websecure.address=:453"
    ports:
      - "8070:8070"
      - "453:453"
  n8n:
    images: n8nio/n8n
    ports:
      - "0.0.0.0:5678:5678"
    environment:
      - N8N_SECURE_COOKIE=false
```

```sh
sudo docker volume create n8n_data
sudo docker volume create traefik_data
sudo docker compose up -d
```

[^1]: [Server setups - Docker-Compose](https://docs.n8n.io/hosting/installation/server-setups/docker-compose/)