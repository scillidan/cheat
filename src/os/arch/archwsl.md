# [ArchWSL](https://github.com/yuk7/ArchWSL)

## install

```sh
# scoop install archwsl
wsl --install archlinux
arch
```

## useradd

```sh
passwd
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
useradd -m -G wheel -s /bin/bash <user>
passwd <user>
exit
```

```sh
arch config --default-user <user>
arch
```

## Personal do

```sh
sudo pacman -Syyu \
	base-devel \
	editorconfig-checker \
	inetutils \
	less \
	unzip \
	wget \
	xsel
```

```sh
yay -S --noconfirm \
	fuzzy-pkg-finder \
	paru
	# win32yank
```

## WSL Optionals

[^1]

### D-Bus

```sh
# sudo pacman -S dbus
sudo mkdir /run/dbus -p
sudo dbus-daemon --system
```

### systemd/systemctl

```sh
vim /etc/wsl.conf
```

```
[boot]
systemd=true
```

## reference

- [Install Arch Linux on WSL - ArchWiki](https://wiki.archlinux.org/title/Install_Arch_Linux_on_WSL)

## cross-reference

1. [wsl.md](/os/windows/wsl.md)
2. [pacman](bin/_arch/pacman.md)
3. [yay](bin/_arch/yay.md)
4. [openssh](bin/_arch/openssh.md)
5. [tigervnc.md](/opt/_arch/tigervnc.md)
6. [arch-linux.md](/os/arch/arch-linux.md)

- #arch [act.md](/bin/_arch/act.md)
- #arch [asciinema.md](/bin/_arch/asciinema.md)
- #arch [atuin.md](/bin/_arch/atuin.md)
- #arch [ranger.md](/bin/_arch/ranger.md)
- #arch [texlive.md](/bin/_arch/texlive.md)
- #arch [tmux.md](/bin/_arch/tmux/tmux.md)
- #arch [translate-shell.md](/bin/_arch/translate-shell.md)
- #arch [zsh.md](/bin/_arch/zsh/zsh.md)
- [7-zip.md](/bin/7-zip.md)
- [abbreviate.md](/bin/abbreviate.md)
- [agg.md](/bin/agg.md)
- [ascii-silhouettify.md](/bin/ascii-silhouettify.md)
- [ast-grep.md](/bin/ast-grep.md)
- [autocast.md](/bin/autocast.md)
- [bat.md](/bin/bat.md)
- [btop.md](/bin/btop.md)
- [carapace-bin.md](/bin/carapace-bin.md)
- [chafa.md](/bin/chafa.md)
- [chezmoi.md](/bin/chezmoi.md)
- [cook.md](/bin/cook.md)
- [curl.md](/bin/curl.md)
- [erdtree.md](/bin/erdtree.md)
- [espanso.md](/opt/espanso.md)
- [eva.md](/bin/eva.md)
- [eza.md](/bin/eza.md)
- [fastfetch.md](/bin/fastfetch.md)
- [fzf.md](/bin/fzf.md)
- [hererocks.md](/lib/lua/hererocks.md)
- [git.md](/bin/git/git.md)
- [github-cli.md](/bin/github-cli/github-cli.md)
- [gitify.md](/opt/gitify.md)
- [glow.md](/bin/glow.md)
- [go.md](/lib/go/go.md)
- [gopencc.md](/bin/gopencc.md)
- [grex.md](/bin/grex.md)
- [gvm.md](/lib/go/gvm.md)
- [jq.md](/bin/jq.md)
- [ki-cli.md](/bin/ki-cli.md)
- [lazydocker.md](/bin/lazydocker.md)
- [libretrans.md](/bin/libretrans.md)
- [minidoncda.md](/lib/python/miniconda.md)
- [mprocs.md](/bin/mprocs.md)
- [neovim.md](/bin/neovim/neovim.md)
- [npms-cli.md](/bin/npms-cli.md)
- [nvm.md](/lib/nodejs/nvm.md)
- [ollama.md](/bin/ollama.md)
- [open-cli.md](/bin/open-cli.md)
- [pandoc.md](/bin/pandoc.md)
- [pipe-rename.md](/bin/pipe-rename.md)
- [png-to-ico.md](/bin/png-to-ico.md)
- [pnpm.md](/lib/nodejs/pnpm.md)
- [pyenv.md](/lib/python/pyenv.md)
- [pylanguagetool.md](/bin/pylanguagetool.md)
- [python.md](/lib/python/python.md)
- [rembg.md](/bin/rembg.md)
- [retype.md](/Web/retype.md)
- [ripgrep.md](/bin/ripgrep.md)
- [rsync.md](/bin/rsync.md)
- [rustup.md](/lib/rust/rustup.md)
- [sd.md](/bin/sd.md)
- [serve.md](/bin/serve.md)
- [starship.md](/bin/starship.md)
- [thes.md](/bin/thes.md)
- [tldr.md](/bin/tldr.md)
- [trashy.md](/bin/trashy.md)
- [ttf2woff2.md](/bin/ttf2woff2.md)
- [vercel.md](/bin/vercel.md)
- [vim.md](/bin/vim/vim.md)
- [vivliostyle-cli.md](/bin/vivliostyle-cli.md)
- [xan.md](/bin/xan.md)
- [yoga.md](/bin/yoga.md)
- [yq.md](/bin/yq.md)
- [zoxide.md](/bin/zoxide.md)

[^1]: [Known issues](https://wsldl-pg.github.io/ArchW-docs/Known-issues/)

![archwsl_01](/_image/os/archwsl_01.png)
![archwsl_02](/_image/os/archwsl_02.png)
