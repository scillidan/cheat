# [headscale](https://github.com/juanfont/headscale)

## install

[^1] [^2]

Get `headscale_*_linux_arm64` from [Headscale - Releases](https://github.com/juanfont/headscale/releases).

```sh
# Ubuntu 24 ARM
sudo mv headscale_<version>_linux_arm64 headscale
sudo chmod +x headscale
mv headscale /usr/local/bin/
sudo useradd --create-home --home-dir --system --user-group --shell /usr/sbin/nologin headscale
sudo mkdir -p /etc/headscale
sudo wget https://headscale.net/stable/packaging/headscale.systemd.service -O /etc/systemd/system/headscale.service
sudo vim /etc/headscale/config.yaml
```

```yaml
unix_socket: /var/run/headscale/headscale.sock
```

```sh
sudo systemctl daemon-reload
sudo systemctl enable --now headscale
systemctl status headscale
```

## cross-reference

- [headscale-ui.md](/optWeb/headscale-ui.md)

[^1]: [Using standalone binaries (advanced)](https://headscale.net/stable/setup/install/official/#using-standalone-binaries-advanced)
[^2]: [How To Install Headscale on Ubuntu 24.04|22.04|20.04](https://computingforgeeks.com/install-and-configure-headscale-on-ubuntu/)
