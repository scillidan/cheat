# [chezmoi](https://www.chezmoi.io)

## install

```sh
# Arch
sudo pacman -S chezmoi
# Windows 10
scoop install chezmoi
```

## usage

[^1] [^2]

```sh
# rm -rf ~/.local/share/chezmoi
# rm -rf ~/.config/chezmoi
chezmoi init
vim ~/.local/share/chezmoi/.chezmoiignore
```

```
<ignorefile>
<ignoredir>/
```

```sh
chezmoi add <your_dotfiles>
chezmoi cd
```

```sh
git remote add origin https://github.com/<user>/<repo>
git branch -M main
git add .
git commit -m "<commit>"
git push -u origin main
```

On another PC:

```sh
chezmoi init https://github.com/<user>/<repo>
chezmoi diff
chezmoi apply -v
# Pull updates
chezmoi update -v
```

[^1]: [Dotfiles with Chezmoi](https://blog.lazkani.io/posts/dotfiles-with-chezmoi/)
[^2]: [Chezmoi: ignore files and subdirectories](https://stackoverflow.com/questions/75519055/chezmoi-ignore-files-and-subdirectories)
