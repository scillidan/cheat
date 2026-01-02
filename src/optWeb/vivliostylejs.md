# [Vivliostyle Viewer](https://github.com/vivliostyle/vivliostyle.js)

![](https://img.shields.io/github/license/vivliostyle/vivliostyle.js) ![](https://img.shields.io/github/last-commit/scillidan/vivliostyle.js/main?label=last%20commit%20(fork))

## install

1. Get `Stable release` from [Vivliostyle.js Releases](https://vivliostyle.github.io/).
2. Decompress it to `vivliostyle-viewer`.

```sh
cd vivliostyle-viewer
```

## usage

```sh
serve -s viewer -p 4321
```

```sh
# PM2
pm2 serve viewer 4321 --name vivliostyle-viewer --spa
```

## Deploy with Github Pages

1. Github → Project → Settings → Pages → Build and deployment → Branch → gh-pages.
2. After deploy, visit `https://<user>.github.io/vivliostyle.js/viewer/vivliostyle-viewer.html`.

## reference

- [[Support Guide] Handling CORS on Netlify](https://answers.netlify.com/t/support-guide-handling-cors-on-netlify/107739)
