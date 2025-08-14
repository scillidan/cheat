# [timidity++](https://github.com/geofft/timidity)

## install

```sh
# Arch
sudo pacman -S timidity++
```

## command

```sh
# Convert MIDI file to MP3
timidity "$1" -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k "_mid2.mp3"
```
