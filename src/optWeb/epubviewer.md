# [ePubViewer](https://github.com/pgaskin/ePubViewer)

![](https://img.shields.io/github/license/pgaskin/ePubViewer) ![](https://img.shields.io/github/last-commit/pgaskin/ePubViewer/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/pgaskin/ePubViewer
cd ePubViewer
```

## usage

```sh
serve -s . -p 4321
# pm2 serve . 4321 --name epubvidewer --spa
```

1. Visit `http://localhost:4000` or `http://localhost:4000#book.epub`.
2. If app take up `4321` port, visit `chrome://serviceworker-internals/?devtools` and unregister it.

![epubviewer](/_image/optWeb/epubviewer.png)
