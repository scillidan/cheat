# [PDF.js](https://github.com/mozilla/pdf.js)

![](https://img.shields.io/github/license/mozilla/pdf.js) ![](https://img.shields.io/github/last-commit/scillidan/pdf.js/main?label=last%20commit%20(fork))

## install

[^1]

Install [GTK 2](https://github.com/Automattic/node-canvas/wiki/Installation:-Windows#2-installing-gtk-2).

```sh
pnpm install node-pre-gyp
git clone --depth=1 https://github.com/mozilla/pdf.js
cd pdf.js
npm install
npm install -g gulp-cli
gulp generic
```

## usage

```sh
dufs build/generic
```

```sh
pm2 serve -s build/generic -p 4321 --name pdfjs --spa
```

Visit `http://localhost:<port>/web/viewer.html` or `http://localhost:<port>/web/viewer.html?file=<book>.pdf`.

[^1]: [Error on npm install](https://github.com/mozilla/pdf.js/issues/15112)

## appdedix

![pdf-js](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/pdf-js.png)
