# [Kiwix Server](https://kiwix.org/en/applications/)

1. Download binaries.
2. Decompress the archiver to `Kiwix-Server/`.
3. Add `Kiwix-Server/` into PATH.

## usage

```sh
# Deliver ZIM file articles on LAN
kiwix-serve --address 0.0.0.0 --port 5173 <zim>
```

```sh
# Deliver ZIM files articles on LAN
kiwix-manage <path_to>/kiwix/library.xml add <zim>
kiwix-serve --library <path_to>/kiwix/library.xml --address 0.0.0.0 --port 5173
```