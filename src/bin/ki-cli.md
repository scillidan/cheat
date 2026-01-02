# [ki-cli](https://github.com/nju33/ki-cli)

## install

```sh
# Node.js
pnpm add -g ki-cli
```

## usage

### command

```sh
ki a b c foo.hoge bar.fuga baz.piyo long.long.long.depth | sed "s/├/-/g; s/│/ /g; s/└/-/g; s/──/--/g" | sed "s/-─/-/g"
```
