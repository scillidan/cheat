# [Reference](https://github.com/Fechin/reference)

![](https://img.shields.io/github/license/Fechin/reference) ![](https://img.shields.io/github/last-commit/scillidan/reference/main?label=last%20commit%20(fork))

## install

[^1]

```sh
git clone --depth=1 https://github.com/Fechin/reference
cd reference
npm install
npm run build
```

## usage

```sh
npm run dev
```

```sh
# PM2
hexo g
pm2 serve public 4321 --name reference --watch --spa
watchexec -w source\_posts -- hexo g
```

## optional

```sh
subl _config.yml
```

```yaml
# Change port
url: http://localhost
```

[^1]: [Watchexec](https://github.com/watchexec/watchexec)

## appdedix

![reference](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/reference.png)
