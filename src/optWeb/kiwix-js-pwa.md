# [Kiwix JS for PWA, Windows and Linux (Electron, NWJS, UWP)](https://github.com/kiwix/kiwix-js-pwa)

![](https://img.shields.io/github/license/kiwix/kiwix-js-pwa) ![](https://img.shields.io/github/last-commit/scillidan/kiwix-js-pwa/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/kiwix/kiwix-js-pwa
cd kiwix-js-pwa
npm install
npm run build
```

## usage

```sh
npm run serve
# pm2 serve dist 5173 --name kiwix-js-pwa --spa --env production
```

1. Visit `http://localhost:5173`
2. Setting → Use Private File System → Add file(s) → Add to OPFS → Select your `.zim` → Wait for it to complete.
3. (Optional) Install PWA.
4. If you clean up the cache of browser, you need to do it again.

## appdedix

![kiwix-js-pwa](/_image/optWeb/kiwix-js-pwa.png)
