# [presenterm](https://github.com/mfontanini/presenterm)

## install

```sh
# Cargo
cargo install --force presenterm
```

## usage

```sh
git clone --depth=1 https://github.com/mfontanini/presenterm
cd presenterm
```

```sh
presenterm --theme dark examples/demo.md
```

```sh
pipx install presenterm-export
presenterm --export-pdf --theme light examples/demo.md
```
