# [FocusTide](https://github.com/Hanziness/FocusTide)

![](https://img.shields.io/github/license/Hanziness/FocusTide) ![](https://img.shields.io/github/last-commit/scillidan/FocusTide/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/Hanziness/FocusTide
cd FocusTide
yarn install
yarn generate
```

## usage

```sh
serve dist -p 4321
```

```sh
# PM2
pm2 serve dist 4321 --name focustide --spa
```

If app take up `4321` port, visit `chrome://serviceworker-internals/?devtools` and unregister it.

## appdedix

![focustide](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/focustide.png)
