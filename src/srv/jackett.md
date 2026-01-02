# [Jackett](https://github.com/Jackett/Jackett)

## install

```sh
# Arch
sudo pacman -S jackett
```

```sh
# Windows 10
scoop install jackett
```

### Ubuntu ARM

[^1]

```sh
sudo apt install mono-devel
```

Get `Jackett.Binaries.LinuxARM64.tar.gz` from [Releases](https://github.com/Jackett/Jackett/releases).

```sh
tar -xvzf Jackett.Binaries.LinuxARM64.tar.gz
cd Jackett
./jackett_launcher.sh
# Exit
```

```sh
sudo ./install_service_systemd.sh
sudo systemctl status jackett.service
```

### Termux

[^2]

```sh
proot-distro login archlinux
pacman -S mono
wget https://github.com/Jackett/Jackett/releases/download/<the_version>/Jackett.Binaries.Mono.tar.gz
tar -xvzf Jackett.Binaries.Mono.tar.gz
cd Jackett
mono --debug JackettConsole.exe
```

## config

- Jackett → Configured Indexers → Add Indexer
	- Torrents.csv (Add)
	- Knaben (Add)
	- TheRARBG (Add)

## reference

- [Security Risk: Your instance has external access enabled without using an admin password.](https://github.com/Jackett/Jackett/wiki/Troubleshooting#security-risk-your-instance-has-external-access-enabled-without-using-an-admin-password)

## cross-reference

- [jsc.md](/bin/_arch/jsc.md)

## resource

### extra

- [jackett.md](https://gist.github.com/wilmardo/cffb41d694edd069c28d585d2e20e0fc)

[^1]: [How to Install Jackett on Ubuntu 20.04](https://varhowto.com/install-jackett-ubuntu-20-04/)
[^2]: [[Package]: Jackett](https://github.com/termux/termux-packages/issues/9757)
