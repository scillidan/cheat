## .mid to mp3

```sh
timidity $1 -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k _mid2_.mp3
```

## download lyric

### zonylrctools

```sh
zonylrctools download -d "$1" -l -n 2
```

## download media

### m3nu

```sh
m3u8 -u="$1" -o="_m3nu_"
```

## download mp3

### yt-dlp

https://bje0716.tistory.com/52

```sh
yt-dlp -x --audio-format mp3 --audio-quality 320k -o "%(title)s.%(ext)s" <url_1>
```

## generate waveform

```sh
audiowaveform -i $1 -o _gen_.png -z auto -w 1920 -h 150 --background-color fffff8 --waveform-color 111111 --axis-label-color fffff8 --border-color fffff8
```

