# [bat](https://github.com/sharkdp/bat)

## install

```sh
# Arch
sudo pacman -S bat
# Windows 10
scoop install bat
```

## config

### [Adding new syntaxes / language definitions](https://github.com/sharkdp/bat#adding-new-syntaxes--language-definitions) { :adding-new-syntaxes--language-definitions }

```sh
mkdir -p %USERPROFILE%/AppData/Roaming/bat/
cd %USERPROFILE%/AppData/Roaming/bat
mkdir syntaxes
cd syntaxes
git clone --depth=1 https://github.com/tellnobody1/sublime-purescript-syntax
cd ..
mkdir themes
cd themes
bat cache --build
```

## usage

```sh
bat --list-themes | fzf --preview="bat --theme={} --color=always <file>"
```

```sh
bat
```

