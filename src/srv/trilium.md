# [Trilium Notes](https://github.com/zadam/trilium)

## install

### Ubuntu 24 ARM

[^1] [^2]

Get `trilium-linux-x64-server-*.tar.xz` from [Trilium - Releases](https://github.com/zadam/trilium/releases).

```sh
tar -xvf trilium-linux-x64-server-*.tar.xz
sudo mv trilium-linux-x64-server /opt/trilium
sudo vim /etc/systemd/system/trilium.service
```

```
[Unit]
Description=Trilium Daemon
After=syslog.target network.target

[Service]
Type=simple
ExecStart=/opt/trilium/trilium.sh
WorkingDirectory=/opt/trilium/

TimeoutStopSec=20
Restart=always

[Install]
WantedBy=multi-user.target
```

```sh
export TRILIUM_DATA_DIR=/home/<user>/.local/share/trilium
sudo systemctl enable --now trilium
```

[^1]: [Server installation · TriliumNext/Trilium Wiki](https://github.com/TriliumNext/Trilium/wiki/Server-installation)
[^2]: [Manual server installation · TriliumNext/Trilium Wiki](https://github.com/TriliumNext/Trilium/wiki/Manual-server-installation)
