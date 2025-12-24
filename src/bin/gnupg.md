# [GnuPG](https://www.gnupg.org)

## install

```sh
# Arch
sudo pacman -S gnupg
# Windows 10
scoop install gnupg
```

## usage

```sh
gpg --full-generate-key
```

### command

```sh
# Create a GnuPG directory and sync files from the user's GnuPG directory.
mkdir <path_to>/gnupg
rsync -av --progress ~/.gnupg/ <path_to>/gnupg
```
