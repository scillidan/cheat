# [reminiflux](https://github.com/reminiflux/reminiflux)

![](https://img.shields.io/github/license/reminiflux/reminiflux) ![](https://img.shields.io/github/last-commit/scillidan/reminiflux/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/reminiflux/reminiflux
cd reminiflux
subl package.json
```

```json
  "scripts": {
    "build": "set GENERATE_SOURCEMAP=false && react-scripts build",
```

```sh
npm install
npm run build
```

## usage

```sh
serve -s build -p 4321
```

```sh
# PM2
pm2 serve build 4321 --name reminiflux --spa
```

1. Miniflux → Settings → API Keys → Create a new API key → `reminiflux` → `<copy_from>`.
2. Visit `localhost:4321`
   ```
   Host: <your_host>:<port>
   API key: <paste_to>
   ```

## appdedix

![reminiflux](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/reminiflux.png)
