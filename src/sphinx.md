# [Sphinx](https://www.sphinx-doc.org/en/master/)

## install

[^1] [^2]

```sh
mkdir <site>
cd <site>
uv venv
.venv\Scripts\activate
uv pip install furo myst-parser
```

## usage

```sh
sphinx-quickstart
# make clean
make html
# uv pip install sphinx-autobuild
# sphinx-autobuild . _bulid
```

[^1]: [Furo](https://github.com/pradyunsg/furo)
[^2]: [Markdown](https://www.sphinx-doc.org/en/master/usage/markdown.html)