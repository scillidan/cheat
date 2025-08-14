# [PipeWire](https://github.com/PipeWire/pipewire)

## install

```sh
sudo pacman -S sof-firmware alsa-firmware alsa-ucm-conf
sudo pacman -S pipewire pipewire-pulse pipewire-alsa
# systemctl --user stop pulseaudio.service
# systemctl --user stop pulseaudio.socket
systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire-pulse.service
sudo pacman -S pavucontrol
```
