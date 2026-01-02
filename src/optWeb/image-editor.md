# [image-editor](https://github.com/andrepv/image-editor)

![](https://img.shields.io/github/license/andrepv/image-editor) ![](https://img.shields.io/github/last-commit/scillidan/image-editor/master?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/andrepv/image-editor
cd image-editor
nvm install 16.20.0
nvm use 16.20.0
npm install
npm run build
```

## usage

```sh
serve -s build -l 4321
```

```sh
# PM2
pm2 serve build 4321 --name image-editor --watch --spa
```

## appdedix

![image-editor](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/image-editor.png)
