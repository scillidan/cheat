# [Kiwix JS](https://github.com/kiwix/kiwix-js)

![](https://img.shields.io/github/license/kiwix/kiwix-js) ![](https://img.shields.io/github/last-commit/scillidan/kiwix-js/main?label=last%20commit%20(fork)) ![](https://img.shields.io/badge/GitHub%20Pages-121013?logo=github&logoColor=white)

```sh
git clone --depth=1 https://github.com/kiwix/kiwix-js
cd kiwix-js
npm install
npm run build
```

## usage

```sh
npm run serve
# pm2 serve dist 5173 --name kiwix-js --spa --env production
```

1. Visit `http://localhost:5173`
2. Setting → Use Private File System → Add file(s) → Add to OPFS → Select your `.zim` → Wait for it to complete.
3. (Optional) Install PWA.
4. If you clean up the cache of browser, you need to do it again.
