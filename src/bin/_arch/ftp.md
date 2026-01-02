# FTP

## install

[^1]

```sh
# Ubuntu 22 ARM
sudo apt install vsftpd
```

## config

```sh
sudo vim /etc/vsftpd.conf
```

```
utf8_filesystem=YES
```

## usage

```sh
sudo systemctl enable --now vsftpd
```

[^1]: [Setting Up a Basic FTP Server on Ubuntu 22](https://reintech.io/blog/setting-up-basic-ftp-server-ubuntu-22)
