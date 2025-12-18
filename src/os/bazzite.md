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

## reference

- #blog [Immutable Linux Distros: Are They Right for You? Take the Test.](https://linuxblog.io/immutable-linux-distros-are-they-right-for-you-take-the-test/)
- #document [Bazzite Documentation](https://docs.bazzite.gg/)
	- [Installing Bazzite for Desktop/Laptop Hardware](https://docs.bazzite.gg/General/Installation_Guide/Installing_Bazzite_for_Desktop_or_Laptop_Hardware/#__tabbed_1_3)
	- [Can I change the hostname of my device?](https://docs.bazzite.gg/General/FAQ/#can-i-change-the-hostname-of-my-device)
