# [Satori](https://github.com/vercel/satori)

![](https://img.shields.io/github/license/vercel/satori) ![](https://img.shields.io/github/last-commit/scillidan/satori/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/vercel/satori
cd satori
nvm install 16.20.0
nvm use 16.20.0
pnpm install
```

## usage

```sh
pnpm dev:playground -- -p 4321
# set PORT=4321 && pm2 start -n "satori" --cwd "./" "./node_modules/turbo/bin/turbo" -- dev --filter=satori-playground...
```

## appdedix

![satori](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/satori.png)
