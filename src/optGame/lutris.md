# [Lutris](https://lutris.net/)

## install

[^1]

```sh
# AMD GPUs gpu driver
sudo pacman -S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon
# Vulkan
sudo pacman -S vulkan-tools
# Lutris
sudo pacman -S lutris
# Wine
sudo pacman -S wine wine-gecko wine-mono
sudo pacman -S lib32-gnutls lib32-libldap lib32-mpg123 lib32-openal lib32-v4l-utils lib32-libpulse lib32-alsa-plugins lib32-libxcomposite lib32-libxinerama lib32-ncurses lib32-libxml2 lib32-freetype2 lib32-libpng lib32-sdl2
sudo pacman -S winetricks
# DXVK and Other Runners
yay -S dxvk-bin
```

[^1]: [How to Install and Use Lutris on Arch Linux](https://www.siberoloji.com/how-to-install-and-use-lutris-on-arch-linux/)
