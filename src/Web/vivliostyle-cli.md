# [Vivliostyle CLI](https://github.com/vivliostyle/vivliostyle-cli)

## install

```sh
# Node.js
pnpm add -g @vivliostyle/cli
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

## reference

- #book [kaigainotabi1](https://github.com/MurakamiShinyu/kaigainotabi1)
- [vivliostyle_doc/samples at gh-pages · vivliostyle/vivliostyle_doc](https://github.com/vivliostyle/vivliostyle_doc/tree/gh-pages/samples)
- [MurakamiShinyu/kaigainotabi1](https://github.com/MurakamiShinyu/kaigainotabi1)
- [Option to use a specific Vivliostyle Viewer version or its URL · Issue #232 · vivliostyle/vivliostyle-cli](https://github.com/vivliostyle/vivliostyle-cli/issues/232)

## appdedix

![vivliostyle_01](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/Web/vivliostyle_01.png)
![vivliostyle_02](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/Web/vivliostyle_02.png)
![vivliostyle_03](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/Web/vivliostyle_03.png)
