# [Tidy Viewer (tv)](https://github.com/alexhallam/tv)

> Tidy Viewer (tv) is a cross-platform data pretty printer that uses column styling to maximize viewer enjoyment. Supports CSV, TSV, PSV, and Parquet files with streaming for large datasets. [alexhallam/tv]

> Tidy Viewer（tv）是一个跨平台的数据美化打印工具，使用列样式来最大化观众的视觉体验。支持CSV、TSV、PSV和Parquet文件，并具备大数据集的流式处理功能。 [alexhallam/tv]

## install

```sh
# Arch
yay -S --noconfirm tidy-viewer
# Cargo
cargo install --force tidy-viewer
```

## usage

### command

```sh
# Fetch color data from various markdown sources, convert to CSV, and display with coloring tools
curl -k --remote-name-all -o - https://raw.githubusercontent.com/scillidan/color/main/data/{chinese-traditional-colors.md,china-tradition-color-monokuro.md,zhongguose.md,china-tradition-color-320.md,nipponcolors.md} | mdtable2csv | xsv select hex,spelling,name | tidy-viewer -D -a -e | coloro | less -R
```
