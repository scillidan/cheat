# [rime-ls](https://github.com/wlh320/rime-ls)

## install

```sh
# Build on Windows 10
git clone --depth=1 https://github.com/wlh320/rime-ls
cd rime-ls
git fetch --tags
git checkout v0.4.1
set "LIBRIME_LIB_DIR=%USERPROFILE%\Usr\Lib\rime\dist\lib"
set "LIBRIME_INCLUDE_DIR=%USERPROFILE%\Usr\Lib\rime\dist\include"
set "LIB=%USERPROFILE%\Usr\Lib\rime\dist\lib"
cargo build --release
```

### Termux (Cache) { #termux }

```sh
# Windows 10
cargo install --force cargo-ndk
rustup target add aarch64-linux-android
# rustup target add armv7-linux-androideabi x86_64-linux-android i686-linux-android
cargo ndk -t aarch64-linux-android build --release
```

```sh
ln ~/.cargo/tmp/release/rime_ls ~/.local/bin/rime_ls
```

## cross-reference

- [cmp-lsp-rimels.md](/bin/neovim/cmp-lsp-rimels.md)
