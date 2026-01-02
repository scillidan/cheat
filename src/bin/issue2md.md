# [issue2md](https://github.com/bigwhite/issue2md)

## install

```sh
git clone --depth=1 https://github.com/bigwhite/issue2md
cd issue2md
make cmdline
# Arch
ln -sfn $(pwd)/issue2md ~/.local/bin/issue2md
# Windows 10
mklink %USERPROFILE%\.local\bin\issue2md.exe %CD%\issue2md
```

## usage

```sh
issue2md <issue_url> file.md
```
