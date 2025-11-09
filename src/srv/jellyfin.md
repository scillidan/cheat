# [Jellyfin](https://jellyfin.org/)

## install

[^1]

```sh
# Ubuntu 22 ARM
sudo dpkg -i jellyfin-server_10.9.11+ubu2204_arm64.deb jellyfin-web_10.9.11+ubu2204_all.deb
sudo dpkg -i jellyfin-ffmpeg6_6.0.1-8-jammy_arm64.deb
sudo systemctl enable --now jellyfin
systemctl status jellyfin
```

## reference

- [Media - Movies](https://jellyfin.org/docs/general/server/media/movies/)
- [Plugins](https://jellyfin.org/docs/general/server/plugins/)

## resource

### cache

- [Jellyfin MPV Shim](https://github.com/jellyfin/jellyfin-mpv-shim)
- [Jellyfin OpenSubtitles Plugin](https://github.com/jellyfin/jellyfin-plugin-opensubtitles)

[^1]: [Installation - Linux](https://jellyfin.org/docs/general/installation/linux#linux-generic-amd64)
