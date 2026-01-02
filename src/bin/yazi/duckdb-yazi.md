# [duckdb.yazi](https://github.com/wylie102/duckdb.yazi)

## install

```sh
ya add wylie102/duckdb
```

```sh
vim ~/.config/yazi/init.lua
```

```lua
require("duckdb"):setup()
```

```sh
vim ~/.config/yazi/yazi.toml
```

```toml
[plugin]
prepend_preloaders = [
	{ name = "*.csv", run = "duckdb", multi = false },
  { name = "*.tsv", run = "duckdb", multi = false },
  { name = "*.json", run = "duckdb", multi = false },
  { name = "*.parquet", run = "duckdb", multi = false },
  { name = "*.txt", run = "duckdb", multi = false },
  { name = "*.xlsx", run = "duckdb", multi = false },
]
prepend_previewers = [
  { name = "*.csv", run = "duckdb" },
  { name = "*.tsv", run = "duckdb" },
  { name = "*.json", run = "duckdb" },
  { name = "*.parquet", run = "duckdb" },
  { name = "*.txt", run = "duckdb" },
  { name = "*.xlsx", run = "duckdb" },
  { name = "*.db", run = "duckdb" },
  { name = "*.duckdb", run = "duckdb" },
]
```

```sh
vim ~/.config/yazi/keymap.toml
```

```toml
[[mgr.prepend_keymap]]
on = "H"
run = "plugin duckdb -1"
desc = "Scroll one column to the left"

[[mgr.prepend_keymap]]
on = "L"
run = "plugin duckdb +1"
desc = "Scroll one column to the right"

[[mgr.prepend_keymap]]
on = ["d", "o"]
run = "plugin duckdb -open"
desc = "open with duckdb"

[[mgr.prepend_keymap]]
on = ["d", "u"]
run = "plugin duckdb -ui"
desc = "open with duckdb ui"
```
