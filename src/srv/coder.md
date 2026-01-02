# [Coder](https://coder.com/)

## install

### Ubuntu 22 ARM

[^1]

Get `code-server-*-linux-arm64.tar.gz` from [releases](https://github.com/coder/code-server/releases).

```sh
tar -xzvf code-server-*-linux-arm64.tar.gz
sudo cp -r code-server-*-linux-amd64 /usr/lib/code-server
sudo ln -s /usr/lib/code-server/bin/code-server /usr/bin/code-server
sudo mkdir /var/lib/code-server
sudo vim /lib/systemd/system/code-server.service
```

```
[Unit]
Description=code-server
After=nginx.service

[Service]
Type=simple
Environment=PASSWORD=<password>
ExecStart=/usr/bin/code-server --bind-addr 0.0.0.0:8010 --user-data-dir /var/lib/code-server --auth password
Restart=always

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl enable --now code-server
```

## config

[^2]

1. Settings → Profile → `<target_profile>` → More → Export → `<profile_name>` → Local file.
2. Settings → Profile (Default) → Import Profile.

[^1]: [How To Set Up the code-server Cloud IDE Platform on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-the-code-server-cloud-ide-platform-on-ubuntu-22-04)
[^2]: [Setup Guide](https://github.com/coder/code-server/blob/main/docs/guide.md)
