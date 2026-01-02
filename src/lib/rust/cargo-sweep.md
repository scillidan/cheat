# [Cargo-sweep](https://github.com/holmgr/cargo-sweep)

## install

```sh
# Arch
yay -S --noconfirm cargo-sweep
# Cargo
cargo install --force cargo-sweep
```

## usage

```sh
cd <repo>
cargo sweep --time 30
cargo sweep --toolchains stable
cargo sweep --installed
```
