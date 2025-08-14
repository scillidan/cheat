# [hererocks](https://github.com/mpeterv/hererocks)

## install

```sh
# Pip
uv tool install hererocks
```

## usage

```sh
# Arch
mkdir $HOME/Usr/Lib
cd $HOME/Usr/Lib
hererocks lua53 -l5.3 -rlatest
source lua53/bin/activate
lua -v
deactivate-lua
# add $HOME/Usr/Lib/lua51/bin/ into path
```
