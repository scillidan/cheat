# [Flatpak](https://flatpak.org)

## install

### Arch

[^1] [^2]

```sh
sudo pacman -S flatpak
sudo reboot
```

```sh
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

### Ubuntu 24

[^3] [^4]

```sh
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
reboot
```

```sh
export GIO_MODULE_DIR=/usr/lib/x86_64-linux-gnu/gio/modules/
flatpak install flathub
```

## usage

### command

```sh
flatpak install flathub <application_id>
flatpak uninstall <application_id>
flatpak list --app
```

```sh
# flatpak install flathub com.qq.QQ
# flatpak install flathub com.wps.Office
# flatpak install flathub com.baidu.NetDisk
```

[^1]: [[Bug]: "SSL peer certificate or SSH remote key was not OK" during extra-data download, only on Ubuntu-based distros](https://github.com/flatpak/flatpak/issues/5253)
[^2]: [Discover Flatpak update error message: Aborted due to failure (Flatpak system operation Deploy not allowed for user)](https://forums.opensuse.org/t/discover-flatpak-update-error-message-aborted-due-to-failure-flatpak-system-operation-deploy-not-allowed-for-user/174151/11)
[^3]: [Ubuntu Quick Setup - Flatpak](https://flatpak.org/setup/Ubuntu)
[^4]: [TLS support is not available - flatpak/flatpak](https://github.com/flatpak/flatpak/issues/1207)
