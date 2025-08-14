# [GnuPG](https://www.gnupg.org)

## install

```sh
sudo pacman -S gnupg
```

## usage

```sh
gpg --full-generate-key
```

## command

```sh
# Create a GnuPG directory and sync files from the user's GnuPG directory.
mkdir <path_to>/gnupg
rsync -av --progress ~/.gnupg/ <path_to>/gnupg
```
