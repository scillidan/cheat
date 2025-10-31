# [nvm](https://github.com/nvm-sh/nvm)

## install

```sh
# Arch
sudo pacman -S nvm
```

[^1]

```sh
# Windows 10
scoop install nvm
```

```sh
# Termux
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```

## usage

```sh
# Arch
nvm install --lts
nvm use --lts
```

```sh
# Windows 10
nvm list available
nvm install lts
nvm use lts
# nvm install iron
# nvm install hydrogen
```

[^2]

```sh
# Termux
PREFIX= nvm install stable
PREFIX= nvm use --delete-prefix stable
```

## config

```sh
vim ~/.nvm/settings.txt
```

```
node_mirror: https://npmmirror.com/mirrors/node/
```

## reference

- [Node.js Releases](https://nodejs.org/en/about/previous-releases)

## cross-reference

### mark

- [miniconda.md](/lib/python/miniconda.md)
- [pipx.md](/lib/python/pipx.md)
- [pyenv.md](/lib/python/pyenv.md)
- [uv.md](/lib/python/uv.md)

### cache

- [jupyter.md](/lib/python/jupyter.md)
- [anaconda.md](/lib/python/anaconda.md)
- [pyenv-virtualenv.md](/lib/python/pyenv-virtualenv.md)
- [virtualenv.md](/lib/python/virtualenv.md)

[^1]: [NVM for Windows](https://github.com/coreybutler/nvm-windows)
[^2]: [nvm is not compatible with the "PREFIX" environment variable: currently set to "/usr/local"](https://github.com/nvm-sh/nvm/issues/1645)
