# [Trafilatura: Discover and Extract Text Data on the Web](https://github.com/adbar/trafilatura)

## install

```sh
uv tool install trafilatura
```

## usage

```sh
trafilatura -u <url>
```

```sh
trafilatura -u <url> > _.txt
sed "s/$/\n/" _.txt > _2.md
```
