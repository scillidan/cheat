# [godotdev.nvim](https://github.com/Mathijs-Bakker/godotdev.nvim)

## install

```sh
uv tool install gdtoolkit
uv tool install neovim-remote
```

## config

- Godot -> Editor -> Editor Settings -> Text Editor -> External
	- Use External Editor (On)
	- Exec Path `/usr/bin/neovide`
	- Exec Flag `--frame=none {file}`
