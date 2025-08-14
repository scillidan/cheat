# [Zsh-z](https://github.com/agkozak/zsh-z)

## config

```sh
vim .zshrc
```

```
zinit wait lucid for agkozak/zsh-z

# https://github.com/agkozak/zsh-z/issues/66
zz() {
  cd "$(zshz -l 2>&1 | sed 's/^[0-9,.]* *//' | fzf -q "$_last_z_args")"
}
```
