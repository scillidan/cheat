# [Vtracer](https://github.com/visioncortex/vtracer)

![](https://img.shields.io/github/license/visioncortex/vtracer) ![](https://img.shields.io/github/last-commit/scillidan/vtracer/master?label=last%20commit%20(fork))

## install

```sh
# Web app
git clone --depth=1 https://github.com/visioncortex/vtracer
cd vtracer
nvm install 16.20.0
nvm use 16.20.0
cd webapp/app
npm install
cargo install --force wasm-pack
wasm-pack build
npm run build
```

```sh
# Arch
yay -S --noconfirm vtracer
# Cargo
cargo install --force vtracer
```

## usage

```sh
# Web App
serve -s . -p 4321
```

```sh
# CLI
vtracer -i "$1" -o _vtracer.svg
```

## appdedix

![vtracer_webapp](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/vtracer_webapp.png)
