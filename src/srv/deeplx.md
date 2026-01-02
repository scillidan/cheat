# [DeepLX](https://github.com/OwO-Network/DeepLX)

## install

### Ubuntu 22 ARM

Get `deeplx_linux_arm64` from [Releases](https://github.com/OwO-Network/DeepLX/releases).

```sh
chmod +x deeplx_linux_arm64
mv deeplx_linux_arm64 /usr/bin/deeplx
sudo mkdir -p /opt/deeplx
sudo vim /etc/systemd/system/deeplx.service
```

```
[Unit]
Description=DeepLX Service
After=network.target

[Service]
ExecStart=/usr/bin/deeplx
WorkingDirectory=/opt/deeplx
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
```

## usage

```sh
sudo systemctl enable --now deeplx.service
```

## reference

- [请求添加对树莓派ARM的二进制程序](https://github.com/OwO-Network/DeepLX/issues/111)
