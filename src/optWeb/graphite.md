# [Graphite](https://github.com/GraphiteEditor/Graphite)

![](https://img.shields.io/github/license/GraphiteEditor/Graphite)

## install

[^1]

```sh
# Ubuntu 24 ARM
cargo install cargo-watch
cargo install wasm-pack
cargo install -f wasm-bindgen-cli@0.2.99
sudo apt install libgtk-3-dev libsoup2.4-dev libjavascriptcoregtk-4.0-dev libwebkit2gtk-4.0-dev
git clone --depth=1 https://github.com/GraphiteEditor/Graphite
cd Graphite/frontend
cargo install --force cargo-about
cargo install --force wasm-opt
npm install vite --save-dev
npm run build
```

## usage

```sh
pm2 serve dist 4321 --name graphite --spa
```

[^1]: [Project setup](https://graphite.rs/volunteer/guide/project-setup/)
