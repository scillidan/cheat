# [Battize](https://bazzite.gg)

## optional

```sh
ujust setup-decky ACTION="install"
ujust enable-tailscale
sudo reboot
sudo tailscale up
```

### Game stream

```sh
ujust setup-sunshine
```

```pwsh
On Windows 10:
netsh advfirewall firewall add rule name="GameStream UDP" dir=in protocol=udp localport=48010 action=allow
netsh advfirewall firewall add rule name="GameStream TCP" dir=in protocol=tcp localport=48000,48010 action=allow
```