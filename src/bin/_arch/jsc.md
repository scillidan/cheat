# [Jackett Search Cli](https://github.com/rodrigo-sys/jsc)

## install

### Termux

Jackett → API Key → `<copy_from>`.

```sh
pkg install jq fzf
git clone --depth=1 https://github.com/rodrigo-sys/jsc
cd jsc
chmod +x jsc
vim jsc
```

```
api_key='<paste_to>'
```

## usage

```sh
jsc -t <tracker> -s "<to_search>"
jsc -t <tracker> -s "<to_search>" | xargs -n 1 -r aria2
```

## cross-reference

### mark

- [jackett.md](/srv/jackett.md)
