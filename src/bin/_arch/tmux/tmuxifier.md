# [Tmuxifier](https://github.com/jimeh/tmuxifier)

## install

```sh
git clone --depth=1 https://github.com/jimeh/tmuxifier ~/.tmuxifier
```

## config

```sh
# .zshrc
export PATH="$HOME/.tmuxifier/bin:$PATH"
export TMUXIFIER_LAYOUT_PATH="$HOME/Usr/Git/Shell/_arch/tmuxifier"
export TMUXIFIER_TMUX_OPTS=""
eval "$(tmuxifier init -)"
```