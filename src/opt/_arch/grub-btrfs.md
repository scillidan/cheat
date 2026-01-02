# [grub-btrfs](https://github.com/Antynea/grub-btrfs)

## install

[^1]

```sh
sudo pacman -S grub-btrfs
sudo systemctl enable --now grub-btrfsd.service
sudo systemctl edit grub-btrfsd.service
```

```
[Service]
ExecStart=
ExecStart=/usr/bin/grub-btrfsd --syslog --timeshift-auto
```

```sh
sudo systemctl daemon-reload
sudo systemctl restart grub-btrfsd.service
```

## cross-reference

- [timeshift.md](/opt/_arch/timeshift.md)

[^1]: [设置 Timeshift 快照](https://arch.icekylin.online/guide/rookie/desktop-env-and-app#_12-%E8%AE%BE%E7%BD%AE-timeshift-%E5%BF%AB%E7%85%A7)
