# [Twenty](https://github.com/twentyhq/twenty)

## install

[^1]

```sh
curl -o docker-compose.yml https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-docker/docker-compose.yml
curl -o .env https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-docker/.env.example
openssl rand -base64 32
vim .env
```

```
APP_SECRET=<random_string>
PGPASSWORD_SUPERUSER=<password>
```

## usage

```sh
sudo docker compose --env-file .env up -d
```

[^1]: [Twenty - Docker Compose](https://twenty.com/developers/section/self-hosting/docker-compose)

![twenty](/_image/srv/twenty.png)
