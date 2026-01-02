# [QR code designer](https://github.com/kochrt/qr-designer)

![](https://img.shields.io/github/license/kochrt/qr-designer) ![](https://img.shields.io/github/last-commit/scillidan/qr-designer/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/kochrt/qr-designer
cd qr-designer
nvm install 16.20.0
nvm use 16.20.0
npm install
npm run generate
```

## usage

```sh
npm run start
# pm2 start npm --name "qr-designer" -- run start
```

## optional

```sh
subl nuxt.config.js
```

```json
  // Change port
  server: {
    host: "localhost",
    port: 3003
  },
```

## appdedix

![qr-designer](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/qr-designer.png)
