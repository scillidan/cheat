# [Vivliostyle CLI](https://github.com/vivliostyle/vivliostyle-cli)

## install

```sh
# Node.js
bun add -g @vivliostyle/cli
```

## usage

```sh
mkdir <dir>
cd <dir>
vivliostyle init
subl vivliostyle.config.js
# Edit it as needed
```

_I don't know why, but sometimes after you use "vivliostyle preview", you need to used `Task Manager` to find and stop the (multi-) `chromium` process._

```sh
vivliostyle preview
```

```sh
# Build html, pdf
vivliostyle build
# Build epub
vivliostyle build --format epub -o <file>.epub
```