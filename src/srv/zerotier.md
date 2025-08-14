# [ZeroTier One](https://www.zerotier.com/)

## install

1. Log-in [ZeroTier](https://my.zerotier.com).
2. Create a Network.

[^1]

```sh
# Ubuntu 22 ARM
wget -qO- https://install.zerotier.com | sudo bash
sudo systemctl enable --now zerotier-one.service
systemctl status zerotier-one.service
sudo zerotier-cli join <network_id>
sudo zerotier-cli listnetworks
```

[^1]: [Debian 11 with ufw firewall is blocking zerotier - General Discussion - ZeroTier Discussions](https://discuss.zerotier.com/t/debian-11-with-ufw-firewall-is-blocking-zerotier/13072)
