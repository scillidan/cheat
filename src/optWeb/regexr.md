# [RegExr](https://github.com/gskinner/regexr)

![](https://img.shields.io/github/license/gskinner/regexr) ![](https://img.shields.io/github/last-commit/scillidan/regexr/master?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/gskinner/regexr
cd regexr
nvm install 10.21.0
nvm use 10.21.0
npm install
```

## usage

```sh
gulp
# pm2 start "...\gulp-cli\bin\gulp.js" --interpreter "...\.nvm\v10.21.0\node.exe" -n regexr
```

## optional

```sh
subl gulpfile.babel.js
```

```js
// Change port
gulp.task("serve", () => {
  browser({
    server: { baseDir: "./deploy/" },
    port: 4321,
  });
});
```

## Deploy with Docker compose

[^1]

```sh
mkdir regexr
cd regexr
vim docker-compose.yml
```

```yaml
services:
  regexr:
    image: gufertum/regexr
```

```sh
sudo docker compose up -d
```

[^1]: [docker-regexr](https://github.com/gufertum/docker-regexr)

## appdedix

![regexr](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/regexr.png)
