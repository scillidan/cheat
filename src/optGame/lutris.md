# [Lutris](https://lutris.net/)

> Lutris is an open-source, Linux-focused gaming platform that acts as a centralized launcher and manager for your PC game library. It integrates with major storefronts (such as Steam, GOG, Humble Bundle, and Epic Games Store) and uses community-maintained install scripts to streamline the setup of Windows games through compatibility layers like Wine, emulators, and other runtimes. In short, Lutris aims to simplify installing, organizing, and launching a wide variety of games on Linux from a single interface. [perplexity.ai]

> Lutris是一个开源的、以Linux为中心的游戏平台，充当您PC游戏库的集中启动器和管理器。它与主要的游戏商店（如Steam、GOG、Humble Bundle和Epic Games Store）集成，并使用社区维护的安装脚本，通过兼容层（如Wine）、模拟器和其他运行时来简化Windows游戏的设置。简而言之，Lutris旨在通过单一界面简化在Linux上安装、组织和启动各种游戏的过程。 [perplexity.ai]

## install

[^1]

```sh
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

[^2]

```sh
# Optional
sudo pacman -S gamemode
```

[^1]: [How to Install and Use Lutris on Arch Linux](https://www.siberoloji.com/how-to-install-and-use-lutris-on-arch-linux/)
[^2]: [How to Install and Configure Vulkan on Arch Linux](https://www.siberoloji.com/arch-linux-howtos-install-and-configure-vulkan/)
