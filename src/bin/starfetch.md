# [starfetch](https://github.com/Haruno19/starfetch)

## install

```sh
# ArchWSL
git clone --depth=1 https://github.com/Haruno19/starfetch
cd starfetch
make -j8
sudo make install
```

```sh
# MSYS2
git clone --depth=1 https://github.com/K1ngst0m/starfetch
cd starfetch
make
```

```sh
# Cargo
git clone --depth=1 https://github.com/CoderCharmander/starfetch
cargo build
```

## usage

```sh
# ArchWSL
starfetch -r
```

```sh
# MSYS2
./starfetch.exe -r
```

```sh
# Cargo
~/.cargo/tmp/debug/starfetch -d
starfetch -L
starfetch orion
```

## annex

```json
// summer_triangle.json for https://github.com/Haruno19/starfetch.
{
  "title": "──── ｓｍｒｔｇｌ ────",
  "graph": {
    "line1": { "5": "✦"},
    "line2": { "18": "✦"},
    "line3": {},
    "line4": {},
    "line5": {},
    "line6": {},
    "line7": {},
    "line8": {},
    "line9": { "10": "✦" },
    "line10": {}
  },
  "name": "Summer Triangle",
  "quadrant": "NQ4",
  "right ascension": "18h36m56s to 20h41m26s",
  "declination": "+08°52′06″ to +45°16′49″",
  "area": "",
  "main stars": "3"
}
```

```json
// summer_triangle.json for https://github.com/CoderCharmander/starfetch.
{
    "title": "──── ｓｍｒｔｇｌ ────",
    "graph": [
        [5, 1, "✦"],
        [18, 2, "✦"],
        [10, 9, "✦"]
    ],
    "name": "Summer Triangle",
    "quadrant": "NQ4",
    "right_ascension": "18h36m56s to 20h41m26s",
    "declination": "+08°52′06″ to +45°16′49″",
    "area": "null",
    "main_stars": "3"
}
```

- [file_starfetch-rust](https://github.com/scillidan/file_starfetch-rust)
