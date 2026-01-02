# [Domain name resolution](https://wiki.archlinux.org/title/Domain_name_resolution)

## install

[^1]

```sh
sudo vim /etc/hosts
```

```
# For example
<ip>	github.com
<ip>	raw.githubusercontent.com
```

## usage

```sh
sudo systemctl restart systemd-resolved
```

[^1]: [hosts](https://man.archlinux.org/man/hosts.5)
