# [fontTools](https://github.com/fonttools/fonttools)

## install

```sh
# Arch
sudo pacman -S python-fonttools
# Pip
uv tool install fonttools
```

## usage

```sh
# Generate a Latin subset of a TTF file into a WOFF2 format
pyftsubset "$1" --output-file="_latin.woff2" --flavor=woff2 --layout-features=* --unicodes="U+0000-00FF,U+0131,U+0152-0153,U+02BB-02BC,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2122,U+2191,U+2193,U+2212,U+2215,U+FEFF,U+FFFD"
```
