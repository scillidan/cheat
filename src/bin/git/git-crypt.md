# [git-crypt](https://github.com/AGWA/git-crypt)

## install

```sh
# Arch
sudo pacman -S git-crypt
# Windows 10
scoop install git-crypt
```

## usage

```sh
cd <repo>
vim .gitattributes
```

```
<secretfile> filter=git-crypt diff=git-crypt
<secretdir/**> filter=git-crypt diff=git-crypt
```

```sh
git-crypt init
# git-crypt add-gpg-user <gnupg_id>
# git-crypt unlock
git-crypt export-key <path_to>/git-crypt_key_<repo>
git-crypt status
git-crypt unlock <path_to>/git-crypt_key_<repo>
```

### With chezmoi

```sh
chezmoi init
chezmoi add ~/.gnupg
cd ~/.local/share/chezmoi
vim ~/.config/chezmoi/.chezmoiignore
```

```
* filter=git-crypt diff=git-crypt
```

```sh
git-crypt export-key <path_to>/git-crypt_key
git-crypt status
chezmoi cd
```

```sh
# chezmoi
git remote add origin https://github.com/<user>/<repo>
git branch -M main
git add .
git commit -m "<commit>"
git push -u origin main
```
