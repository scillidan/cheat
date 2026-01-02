# [yt-dlp](https://github.com/yt-dlp/yt-dlp)

> yt-dlp is a feature-rich command-line audio/video downloader with support for thousands of sites. [yt-dlp/yt-dlp]

> yt-dlp是一个功能丰富的命令行音频/视频下载器，支持数千个网站。 [yt-dlp/yt-dlp]

## install

```sh
# Arch
sudo pacman -S yt-dlp
# Windows 10
scoop install yt-dlp
```

## usage

### command

[^1]

```sh
# List available formats for a given URL
yt-dlp -F "<url_1>"

# Download specific video and audio formats using their IDs
yt-dlp -f "<video_id>+<audio_id>" "<url_1>"

# Download the best video and audio available
yt-dlp -f bestvideo+bestaudio "<url_1>"

# Download MP3 using yt-dlp
yt-dlp -x --audio-format mp3 --audio-quality 320k -o "%(title)s.%(ext)s" "<url_1>"
```

## troubleshoot

[^2]

1. Get `yt-dlp-ChromeCookieUnlock.zip` from [release](https://github.com/seproDev/yt-dlp-ChromeCookieUnlock).
2. Decompress it to `yt-dlp-ChromeCookieUnlock/`.
3. Move `yt-dlp-ChromeCookieUnlock\` into `C:\Users\User\AppData\Roaming\yt-dlg\plugins\`.

[^1]: [[YT-DLP] How to automatically convert all audio downloads to mp3/m4a/aac (either one) and all video downloads to mp4/mov (or whatever)?](https://www.reddit.com/r/youtubedl/comments/130i9og/ytdlp_how_to_automatically_convert_all_audio/)
[^2]: [Installing Plugins](https://github.com/yt-dlp/yt-dlp#installing-plugins)

## appdedix

- [yt-dlp.mp4](https://scillidan.github.io/media_cheat/bin/yt-dlp.mp4)
