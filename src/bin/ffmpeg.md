# [FFmpeg](https://www.ffmpeg.org)

## install

```sh
# Arch
sudo pacman -S ffmpeg
# Windows 10
scoop install ffmpeg
```

## Personal do

### Windows 10

1. Get `ffmpeg-master-latest-win64-gpl-shared.zip` from [FFmpeg Static Auto-Builds - Releases](https://github.com/BtbN/FFmpeg-Builds/releases).
2. Add `ffmpeg-gpl-shared\bin` into PATH.

## command

```sh
# Convert GIF to MP4
ffmpeg -i "$1.gif" -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "_.mp4"

# Create a video from an image
ffmpeg -framerate 1 -i "$04d.png" -c:v libx264 -r 30 -pix_fmt yuv420p "_img2_.mp4"
ffmpeg -framerate 30 -i "$04d.png" -c:v libx264 -pix_fmt yuv420p "_img2_.mp4"
ffmpeg -loop 1 -i "$1" -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -t 1 -pix_fmt yuv420p "_.mp4"

# Export poster from a video
ffmpeg -i "$1.mp4" -vframes 1 "_poster.jpg"

# Export subtitle to SRT format
ffmpeg -i "$1" -map 0:s:0 "_.srt"

# Export subtitle to SUP format
ffmpeg -i "$1" -map 0:s:0 -c:s copy "_.sup"

# Extract a single frame from the MP4 video to create a poster image
ffmpeg -i "|.mp4" -vframes 1 _poster.jpg

# Extract audio from video and save as MP3 format
ffmpeg -i "%%~I" -vn -acodec libmp3lame -q:a 0 "!outputFile!"

# Extract audio to MP3 from video
ffmpeg -i "$1" -map 0:a:0 -c:a copy "_.mp3"

# Optimize audio for M4B format
ffmpeg -i "$1" -map 0:a -map_metadata 0 -c:a aac -b:a 64k -id3v2_version 3 -movflags +faststart "_opti.m4b"

# Convert AAC audio to MP3
ffmpeg -i "$1" -codec:a libmp3lame -qscale:a 1 "_.mp3"

# Convert audio to OGG format
ffmpeg -i "$1" -map_metadata -1 -c:a libvorbis -b:a 64k -compression_level 10 -vn "_.ogg"
# Music encoding to OGG
ffmpeg -i "$1" -c:a libvorbis -ar 44100 -b:a 256k -maxrate 320k -minrate 128k -bufsize 320k "_.ogg"
# Voice recording to OGG
ffmpeg -i "$1" -c:a libvorbis -ar 44100 -b:a 128k -maxrate 192k -minrate 64k -bufsize 192k "_.ogg"

# Convert GIF to MP4 video format with specified settings
ffmpeg -i "$1.gif" -movflags faststart -pix_fmt yuv420p -vf "fps=30,scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -crf 23 -preset medium _.mp4

# Convert input video to MP4 format and ensure video scaling is even
ffmpeg -i "$1" -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" _.mp4

# Convert M4A audio to MP3
ffmpeg -i "$1" -c:a libmp3lame -q:a 8 "_.mp3"
ffmpeg -i "$1" -vn -c:a libmp3lame -b:a 224K -ac 2 "_.mp3"

# Convert video to MP4 with AC3 audio
ffmpeg -i "$1" -map 0 -c:v copy -c:a ac3 -b:a 256K -ac 2 -c:s copy "_.mp4"
```

## reference

- #document [FFmpeg](https://ffmpeg.org/ffmpeg.html)
- [ffmpeg GIF to MP4](https://gist.github.com/gvoze32/95f96992a443e73c4794c342a44e0811)
- [gif.to.video](https://github.com/kinglisky/gif.to.video/blob/master/doc.md)
- [How to do I convert an animated gif to an mp4 or mv4 on the command line?](https://unix.stackexchange.com/questions/40638/how-to-do-i-convert-an-animated-gif-to-an-mp4-or-mv4-on-the-command-line)
- [小红书发布的动图为什么不动？](https://www.bilibili.com/read/cv21625230/)
- [How to convert video to animated GIF using FFmpeg](https://shotstack.io/learn/convert-video-gif-ffmpeg/)
