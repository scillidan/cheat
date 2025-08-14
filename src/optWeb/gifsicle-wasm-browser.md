# [Gifsicle Wasm Browser](https://github.com/renzhezhilu/gifsicle-wasm-browser)

![](https://img.shields.io/github/license/renzhezhilu/gifsicle-wasm-browser) ![](https://img.shields.io/github/last-commit/scillidan/gifsicle-wasm-browser/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/renzhezhilu/gifsicle-wasm-browser
cd gifsicle-wasm-browser
npm install
```

## usage

```sh
serve -s docs -p 4321
# pm2 serve docs 4321 --name gifsicle-wasm-browser --spa
```

If app take up `4321` port, visit `chrome://serviceworker-internals/?devtools` and unregister it.

![gifsicle-wasm-browser](/_image/optWeb/gifsicle-wasm-browser.png)
