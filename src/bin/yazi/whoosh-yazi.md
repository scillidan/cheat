# [whoosh.yazi](https://github.com/WhoSowSee/whoosh.yazi)

## install

```sh
ya pkg add WhoSowSee/whoosh
```

```sh
vim ~/.config/yazi/init.lua
```

```lua
local bookmarks = {
	-- For example
	{ tag = "Downloads", path = "~/Downloads", key = { "d", "d" } },
	{ tag = "Usr", path = "~/Usr", key = { "d", "u" } },
}
-- Windows
if ya.target_family() == "windows" then
	local home_path = os.getenv("USERPROFILE")
	table.insert(bookmarks, {
		tag = "Scoop Local",
		path = os.getenv("SCOOP") or (home_path .. "\\scoop"),
		key = "p",
	})
end
require("whoosh"):setup({
	bookmarks = bookmarks,
	jump_notify = false,
	keys = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
	path = (ya.target_family() == "windows" and os.getenv("APPDATA") .. "\\yazi\\config\\bookmark")
		or (os.getenv("HOME") .. "/.config/yazi/bookmark"),
	path_truncate_enabled = false,
	path_max_depth = 3,
	fzf_path_truncate_enabled = false,
	fzf_path_max_depth = 5,
	path_truncate_long_names_enabled = false,
	fzf_path_truncate_long_names_enabled = false,
	path_max_folder_name_length = 20,
	fzf_path_max_folder_name_length = 20,
	history_size = 10,
	history_fzf_path_truncate_enabled = false,
	history_fzf_path_max_depth = 5,
	history_fzf_path_truncate_long_names_enabled = false,
	history_fzf_path_max_folder_name_length = 30,
})
```

```sh
vim ~/.config/yazi/keymap.toml
```

```toml
[[mgr.prepend_keymap]]
on = "["
run = "plugin whoosh jump_by_key"
desc = "Jump bookmark by key"

# Direct fuzzy search access
[[mgr.prepend_keymap]]
on = "}"
run = "plugin whoosh fuzzy"
desc = "Direct fuzzy search for bookmarks"

# Basic bookmark operations
[[mgr.prepend_keymap]]
on = ["]", "a"]
run = "plugin whoosh save"
desc = "Add bookmark (hovered file/directory)"

[[mgr.prepend_keymap]]
on = ["]", "A"]
run = "plugin whoosh save_cwd"
desc = "Add bookmark (current directory)"

# Temporary bookmarks
[[mgr.prepend_keymap]]
on = ["]", "t"]
run = "plugin whoosh save_temp"
desc = "Add temporary bookmark (hovered file/directory)"

[[mgr.prepend_keymap]]
on = ["]", "T"]
run = "plugin whoosh save_cwd_temp"
desc = "Add temporary bookmark (current directory)"

# Jump to bookmarks
[[mgr.prepend_keymap]]
on = ["]", "f"]
run = "plugin whoosh jump_by_fzf"
desc = "Jump bookmark by fzf"

# Delete bookmarks
[[mgr.prepend_keymap]]
on = ["]", "d"]
run = "plugin whoosh delete_by_key"
desc = "Delete bookmark by key"

[[mgr.prepend_keymap]]
on = ["]", "D"]
run = "plugin whoosh delete_by_fzf"
desc = "Delete bookmarks by fzf (use TAB to select multiple)"

[[mgr.prepend_keymap]]
on = ["]", "C"]
run = "plugin whoosh delete_all"
desc = "Delete all user bookmarks"

# Rename bookmarks
[[mgr.prepend_keymap]]
on = ["]", "r"]
run = "plugin whoosh rename_by_key"
desc = "Rename bookmark by key"

[[mgr.prepend_keymap]]
on = ["]", "R"]
run = "plugin whoosh rename_by_fzf"
desc = "Rename bookmark by fzf"
```