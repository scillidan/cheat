# [sreadium](https://github.com/suisuyy/sreadium)

![](https://img.shields.io/github/license/suisuyy/sreadium) ![](https://img.shields.io/github/last-commit/scillidan/sreadium/main?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/suisuyy/sreadium
cd sreadium
```

1. Put `*.epub` into `epub_content/`.
2. Modify `epub_library.opds.

## usage

```sh
serve -s . -p 4321
# pm2 serve . 4321 --name sreadium --spa
```

If app take up `4321` port, visit `chrome://serviceworker-internals/?devtools` and unregister it.

## annex

![sreadium](/_image/optWeb/sreadium.png)
