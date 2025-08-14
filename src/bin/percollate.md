# [Percollate](https://github.com/danburzo/percollate)

## install

```sh
# Npm
pnpm add -g percollate
```

## usage

```sh
# Convert html file to EPUB
percollate epub "$1" -o "_percollate.epub"

# Convert html file to PDF with specific CSS styles
percollate pdf "$1" -o "_percollate.pdf" --css ":root { --main-font: 'Beholden Medium';  --code-font: 'Beholden Medium'; --alt-font: 'Beholden Medium'; }"
```
