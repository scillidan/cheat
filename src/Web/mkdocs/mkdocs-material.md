# [Material for MkDocs](https://github.com/squidfunk/mkdocs-material)

## install

```sh
mkdir <site>
cd <site>
uv venv
.venv\Scripts\activate.bat
uv pip install mkdocs-material
```

## usage

```sh
mkdocs new .
subl config.yaml
```

```yaml
theme:
  name: material
```

## reference

- #document [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
  - [Changing the logo and icons - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/setup/changing-the-logo-and-icons/)
  - [Code blocks - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/reference/code-blocks/#embedding-external-files)

## troubleshoot

- [Pymdown extensions dependency issue · Issue #5526 · squidfunk/mkdocs-material](https://github.com/squidfunk/mkdocs-material/issues/5526)
