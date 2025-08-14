# [Mdbook Embedify](https://github.com/MR-Addict/mdbook-embedify)

## install

```sh
# Cargo
cargo install --force mdbook-embedify
```

## usage

```toml
# book.toml
[preprocessor.embedify]
```

```md
# Bilibili
{% embed bilibili id="<id>" loading="lazy" %}
# Youtube
{% embed youtube id="<id>" loading="lazy" %}
```

## reference

- #document [mdbook-embedify](https://mr-addict.github.io/mdbook-embedify/index.html)
