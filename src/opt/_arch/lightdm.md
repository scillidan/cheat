# [LightDM Display Manager](https://github.com/canonical/lightdm)

## install

[^1] [^2]

### Intel + NVIDIA

```sh
# Waiting fixed. 
sudo pacman -S lightdm lightdm-gtk-greeter
```

### AMD

```sh
sudo pacman -S lightdm lightdm-webkit2-greeter
```

```sh
git clone --depth=1 https://github.com/TheTerrior/lightdm-minimal
cd lightdm-minimal
chmod +x ./risky_installer.sh
sudo ./risky_installer.sh
sudo vim /etc/lightdm/lightdm.conf
```

```
# Add this under [Seat:*]
greeter-session=lightdm-webkit2-greeter
```

```sh
sudo vim /etc/lightdm/lightdm-webkit2-greeter.conf
```

```
webkit_theme = minimal
```

## usage

```sh
sudo systemctl enable --now lightdm
```

## reference

- [LightDM - ArchWiki](https://wiki.archlinux.org/title/LightDM)

[^1]: [Arch linux install lightdm (Light Display Manager)](https://gist.github.com/miguelmota/5087fb8d92599efc4748c134846c8daf)
[^2]: [A minimal LightDM WebKit2 theme](https://github.com/TheTerrior/lightdm-minimal)

## troubleshoot

- [Black screen when trying to use lightdm-webkit2-greeter](https://www.reddit.com/r/archlinux/comments/1fyhxhu/black_screen_when_trying_to_use/)
