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

## config

```sh
vim ~/.nvm/settings.txt
```

```
node_mirror: https://npmmirror.com/mirrors/node/
```

## reference

- [Node.js Releases](https://nodejs.org/en/about/previous-releases)

[^1]: [NVM for Windows](https://github.com/coreybutler/nvm-windows)
