# [csview](https://github.com/wfxr/csview)

## install

```sh
# Arch
yay -S --noconfirm csview
# Windows 10
scoop install csview
# Cargo
cargo install --force csview
```

## command

```sh
# Fetch and process markdown table from GitHub, cleaning up the format and converting to CSV
curl -k https://raw.githubusercontent.com/scillidan/WALLPAP-ENG-resource/main/table.md | sd "\[\d{10}\]\(" "" | sd "(\)\|\S+subsc)" "|![](//img.shields.io/steam/subsc" | mdtable2csv | sd "//steamc" "https://steamc" | xsv select source,version,urlid | csview
```
