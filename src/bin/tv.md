# [Tidy Viewer (tv)](https://github.com/alexhallam/tv)

## install

```sh
# Arch
yay -S --noconfirm tidy-viewer
# Cargo
cargo install --force tidy-viewer
```

## command

```sh
# Fetch color data from various markdown sources, convert to CSV, and display with coloring tools
curl -k --remote-name-all -o - https://raw.githubusercontent.com/scillidan/color/main/data/{chinese-traditional-colors.md,china-tradition-color-monokuro.md,zhongguose.md,china-tradition-color-320.md,nipponcolors.md} | mdtable2csv | xsv select hex,spelling,name | tidy-viewer -D -a -e | coloro | less -R
```