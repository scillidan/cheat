# [TeXdoc online](https://gitlab.com/islandoftex/images/texdoc-online)

## install

[^1]

```sh
git clone --depth=1 https://gitlab.com/islandoftex/images/texdoc-online
cd texdoc-online
cp docker-compose.yml docker-compose.yml.bak
vim docker-compose.yml
# Copy from https://gitlab.com/islandoftex/images/texdoc-online/-/wikis/Deploying-your-instance-of-TeXdoc-online#running-from-source
```

```sh
sudo docker compose up -d
```

[^1]: [Deploying your instance of TeXdoc online · texdoc-online Wiki](https://gitlab.com/islandoftex/images/texdoc-online/-/wikis/Deploying-your-instance-of-TeXdoc-online)
