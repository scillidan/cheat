# [Tailscale](https://tailscale.com)

## install

```sh
# Ubuntu 22 ARM
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt-get update
sudo apt-get install tailscale
sudo tailscale up
```

```sh
# Windows 10
scoop install tailscale
```

```sh
# Arch
sudo pacman -S tailscale
sudo systemctl enable --now tailscaled
sudo tailscale login
```

## reference

### cache

- [Subnet routers](https://tailscale.com/kb/1019/subnets)
