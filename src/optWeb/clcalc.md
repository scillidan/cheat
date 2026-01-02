# [CL Calc](https://github.com/ovk/clcalc)

![](https://img.shields.io/github/license/ovk/clcalc) ![](https://img.shields.io/github/last-commit/scillidan/clcalc/master?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/ovk/clcalc
cd clcalc
npm install
node node_modules/gulp/bin/gulp.js
```

## usage

```sh
serve -s dist -p 4321
```

If app take up `4321` port, visit `chrome://serviceworker-internals/?devtools` and unregister it.

## Deploy with Vercel

1. When deploy with [Vercel](https://vercel.com).
2. The Project → Settings → General → Build & Development Settings:
   ```
   Build Command: npm run dist
   Output Directory: dist
   ```

## appdedix

![clcalc](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/clcalc.png)
