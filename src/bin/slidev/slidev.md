# [Slidev](https://github.com/slidevjs/slidev)

## usage

[^1]

```sh
pnpm create slidev
```

```sh
cd <proj_dir>
pnpm install @slidev/theme-seriph
pnpm install --save-dev prettier prettier-plugin-slidev
subl .prettierrc.json
# Copy from https://sli.dev/features/prettier-plugin#_2-activate-the-plugin
```

```sh
pnpm run dev
pnpm run build
```

## optional

```sh
pnpm add -D playwright-chromium
pnpm exec playwright install
pnpm run export
# slidev export --with-toc --output <filename>
# slidev export -format pptx --dark
# slidev export -format png --omit-background
````

## reference

- [Syntax Guide](https://sli.dev/guide/syntax)
- [Directory Structure](https://sli.dev/custom/directory-structure)
- [Customizations](https://sli.dev/custom/)
- [Configure Fonts](https://sli.dev/custom/config-fonts#configure-fonts)
- [Monaco Editor](https://sli.dev/features/monaco-editor)
- [Recording](https://sli.dev/features/recording.html)

[^1]: [Getting Started](https://sli.dev/guide)
[^2]: [Exporting](https://sli.dev/guide/exporting)
[^3]: [Theme and Addons](https://sli.dev/guide/theme-addon)
[^4]: [Prettier Plugin](https://sli.dev/features/prettier-plugin)
