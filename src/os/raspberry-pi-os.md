# [Raspberry Pi OS](https://www.raspberrypi.com/documentation/computers/os.html)

## install

[^1]

```sh
sudo apt update
sudo apt full-upgrade
sudo reboot
```

```sh
sudo rpi-update
sudo reboot
```

```sh
sudo rpi-eeprom-update
```

```sh
sudo apt install vim
sudo vim /boot/firmware/config.txt
```

```
# Add on bottom
[all]
# dtoverlay=disable-wifi
# dtoverlay=disable-bt
dtparam=pciex1_gen=3
dtparam=cooling_fan=on
dtparam=fan_temp0=50000
dtparam=fan_temp0_hyst=4000
dtparam=fan_temp0_speed=50
dtparam=fan_temp1=60000
dtparam=fan_temp1_hyst=4000
dtparam=fan_temp1_speed=100
dtparam=fan_temp2=65000
dtparam=fan_temp2_hyst=4000
dtparam=fan_temp2_speed=150
dtparam=fan_temp3=70000
dtparam=fan_temp3_hyst=5000
dtparam=fan_temp3_speed=200
```

## Use repository mirror (Optional)

[^2]

```sh
sudo cp /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
sudo nano /etc/apt/sources.list.d/raspi.list
```

```
deb https://mirrors.ustc.edu.cn/debian bullseye main contrib non-free
# deb-src https://mirrors.ustc.edu.cn/debian bullseye main contrib non-free
deb https://mirrors.ustc.edu.cn/debian bullseye-updates main contrib non-free
# deb-src https://mirrors.ustc.edu.cn/debian bullseye-updates main contrib non-free
# deb https://mirrors.ustc.edu.cn/debian bullseye-backports main contrib non-free
# deb-src https://mirrors.ustc.edu.cn/debian bullseye-backports main contrib non-free
```

## reference

- #blog [Arch Linux ARM on a Raspberry Pi 5 Model B](https://kiljan.org/2023/11/24/arch-linux-arm-on-a-raspberry-pi-5-model-b/)
- #blog [Arch Linux on Raspberry Pi 5: Back from the trenches](http://blog.hellonico.info/posts/iot/arch_on_raspberry/)
- #blog [How I built this website on a Raspberry Pi](https://mirawelner.com/posts/website_howto.html)
- #blog [Raspberry Pi Pico audio player](https://lucstechblog.blogspot.com/2025/02/raspberry-pi-pico-audio-player.html)

## cross-requirement

- [retropie.md](/os/retropie.md)
- [recalbox.md](/os/recalbox.md)

[^1]: [Installing Raspberry Pi OS on an NVMe SSD (Command-Line Style)](https://wolfpaulus.com/rp5-cli/)
[^2]: [USTC Mirror Help - Raspbian](https://mirrors.ustc.edu.cn/help/raspbian.html)

## appdedix

![raspberry-pi-os](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/os/raspberry-pi-os.png)
