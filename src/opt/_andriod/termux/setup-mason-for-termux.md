# [setup-mason-for-termux](https://github.com/Amirulmuuminin/setup-mason-for-termux)

## install

```sh
pkg install which
curl -o /data/data/com.termux/files/usr/bin/install-in-mason  https://raw.githubusercontent.com/Amirulmuuminin/setup-mason-for-termux/main/install-in-mason
chmod +x /data/data/com.termux/files/usr/bin/install-in-mason
install-in-mason lua-language-server
install-in-mason stylua
install-in-mason texlab
```

```sh
# install-in-mason tex-fmt
cargo install tex-fmt
```
