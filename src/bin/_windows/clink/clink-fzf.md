# [FZF integration for Clink](https://github.com/chrisant996/clink-fzf)

## config

```sh
git clone --depth=1 https://github.com/chrisant996/clink-fzf
cd clink-fzf
cp fzf.lua fzf.lua.bak
subl fzf.lua
```

```lua
-- Optional: Change keybind
local function apply_default_bindings()
  if settings.get("fzf.default_bindings") then
		-- Add the following
		-- C-i / Tab
		rl.setbinding([["\C-I"]], [["luafunc:fzf_selectcomplete_force"]])
		-- Tab
		rl.setbinding([["\t"]], [["luafunc:fzf_complete_force"]])
		-- C-Spc
		rl.setbinding([["\e[27;5;32~"]], [["luafunc:fzf_complete"]])
		rl.setbinding([["\C-@"]], [["luafunc:fzf_complete"]])
```

## reference

- #guide [Previewing file and folder contents](https://github.com/chrisant996/clink-fzf?tab=readme-ov-file#previewing-file-and-folder-contents)
