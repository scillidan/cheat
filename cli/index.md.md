
## (de)compress
### 7z

```sh
7z x $1 -p"<password>"
```

```sh
7z a _dir_.zip <dir>
```

### to_cbz

```sh
python <path_to>/to-cbz/to_cbz.py <dir>
```

### pyftsubset

```sh
# .ttf generate latin subset
pyftsubset $1 --output-file=_latin_.woff2 --flavor=woff2 --layout-features=* --unicodes="U+0000-00FF,U+0131,U+0152-0153,U+02BB-02BC,U+02C6,U+02DA,U+02DC,U+2000-206F,U+2074,U+20AC,U+2122,U+2191,U+2193,U+2212,U+2215,U+FEFF,U+FFFD"
```

### neovide

```sh
neovide --size=1250x720 --frame none --no-tabs --wsl archwsl
```

```sh
# unrecommended
ssh <username>@<your_host> -L 1234:0.0.0.0:1234 -- /home/<username>/.local/bin/nvim --headless --listen 0.0.0.0:1234
neovide --server <your_host>:1234
```