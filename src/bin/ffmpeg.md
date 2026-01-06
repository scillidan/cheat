# [FFmpeg](https://www.ffmpeg.org)

## install

```sh
# Arch
sudo pacman -S ffmpeg
# Windows 10
scoop install ffmpeg
scoop install ffmpeg-share
```

## usage

### command

```sh
# Batch convert FLAC to MP3
find . -type f \( -iname "*.wav" -o -iname "*.flac" -o -iname "*.m4a" \) -print0 | xargs -0 -I {} ffmpeg -i "{}" -c:a libmp3lame -ar 44100 -b:a 256k -maxrate 320k -minrate 128k -bufsize 320k "{}.mp3"
# Batch convert FLACs to one MP3
find . -maxdepth 1 -type f -name '*.flac' | sort | sed "s|^\./\(.*\)$|file '\1'|" > _temp.txt
ffmpeg -f concat -safe 0 -i _temp.txt -codec:a libmp3lame -qscale:a 1 _.mp3

# Convert Audio to OGG
ffmpeg -i "$1" -map_metadata -1 -c:a libvorbis -b:a 64k -compression_level 10 -vn _.ogg
# For Music encoding
ffmpeg -i "$1" -c:a libvorbis -ar 44100 -b:a 256k -maxrate 320k -minrate 128k -bufsize 320k _.ogg
# For Voice recording
ffmpeg -i "$1" -c:a libvorbis -ar 44100 -b:a 128k -maxrate 192k -minrate 64k -bufsize 192k _.ogg

# Convert FLAC to M4B
ffmpeg -i "$1.flac" -c:a aac -b:a 128k -minrate 64k -maxrate 192k -ar 44100 _.m4b
# Convert Audio to optimized M4B
ffmpeg -i "$1" -map 0:a -map_metadata 0 -c:a aac -b:a 64k -id3v2_version 3 -movflags +faststart _opti.m4b

# Convert M4A track to MP3
ffmpeg -i "$1" -c:a libmp3lame -q:a 8 _.mp3
ffmpeg -i "$1" -vn -c:a libmp3lame -b:a 224K -ac 2 _.mp3

# Convert AAC to MP3
ffmpeg -i "$1" -codec:a libmp3lame -qscale:a 1 _.mp3

# Convert Video to MP4 with AC3 track
ffmpeg -i "$1" -map 0 -c:v copy -c:a ac3 -b:a 256K -ac 2 -c:s copy _.mp4

# Convert GIF/APNG to MP4
ffmpeg -i "$1.gif/apng" -movflags faststart -pix_fmt yuv420p -vf "fps=30,scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -crf 23 -preset veryslow _.mp4

# Generate MP4 from autocast
autocast "$1.yaml" _temp.cast
agg --theme asciinema --speed 1.5 --font-family "IosevkaTerm Nerd Font Mono" --font-size 14 --fps-cap 30 _temp.cast _temp.gif
ffmpeg -i _temp.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" _.mp4

# Create Video from Image
ffmpeg -framerate 1 -i "$04d.png" -c:v libx264 -r 30 -pix_fmt yuv420p _.mp4
ffmpeg -framerate 30 -i "$04d.png" -c:v libx264 -pix_fmt yuv420p _.mp4
ffmpeg -loop 1 -i "$1" -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -t 1 -pix_fmt yuv420p _.mp4

# Extract frame as poster
ffmpeg -i "$1.mp4" -vframes 1 _poster.jpg
# Extract Audio as MP3
ffmpeg -i "$1" -vn -acodec libmp3lame -ab 192k -ar 44100 -y _.mp3

# Export SRT subtitle
ffmpeg -i "$1" -map 0:s:0 _.srt
# Export SUP subtitle
ffmpeg -i "$1" -map 0:s:0 -c:s copy _.sup
```

## reference

- #document [FFmpeg](https://ffmpeg.org/ffmpeg.html)
- #document [mdn - Web video codec guide](https://developer.mozilla.org/en-US/docs/Web/Media/Guides/Formats/Video_codecs)
- [ffmpeg GIF to MP4](https://gist.github.com/gvoze32/95f96992a443e73c4794c342a44e0811)
- [gif.to.video](https://github.com/kinglisky/gif.to.video/blob/master/doc.md)
- [How to do I convert an animated gif to an mp4 or mv4 on the command line?](https://unix.stackexchange.com/questions/40638/how-to-do-i-convert-an-animated-gif-to-an-mp4-or-mv4-on-the-command-line)
- [小红书发布的动图为什么不动？](https://www.bilibili.com/read/cv21625230/)
- [How to convert video to animated GIF using FFmpeg](https://shotstack.io/learn/convert-video-gif-ffmpeg/)
