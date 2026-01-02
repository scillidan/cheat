# [dir2opds](https://github.com/dubyte/dir2opds)

## install

```sh
# Ubuntu 22 ARM
mkdir dir2opds
cd dir2opds
wget https://github.com/dubyte/dir2opds/releases/download/v*/dir2opds_*_linux_arm64.tar.gz
tar xvf dir2opds_*_linux_arm64.tar.gz
sudo vim /etc/systemd/system/dir2opds.service
```

```
[Unit]
Description=dir2opds
Documentation=https://github.com/dubyte/dir2opds
After=network-online.target

[Service]
Restart=on-failure
ExecStart=/home/<user>/dir2opds/dir2opds -dir /mnt/nvme/audioebook -port 8080

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl enable --now dir2opds.service
```
