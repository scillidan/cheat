## .ass to srt

```sh
ass2srt $1.ass
```

## .srt to vtt

```sh
srt-vtt $1
```

## .sup to srt

```sh
dotnet PgsToSrt.dll --input $1.sup --output _sup2_.srt --tesseractlanguage <language> --tesseractdata "<path_to>/tessdata_fast"
```

## .vtt to srt

```sh
vtt_to_srt $1
```

## encode

### av1an

```sh
av1an -i $1 -v "--cpu-used=3 --end-usage=q --cq-level=30 --threads=8" -w 10 --target-quality 95 -a "-c:a libopus -b:a 192k -ac 2" -l _av1en_.log -o _av1en_.mp4
```

### handbrakecli

```sh
handbrakecli --preset-import-file <preset.json> --input $1 --output _handbrake_.mp4
```

## filmname match

### mnamer

```sh
mnamer -b .
```

## generate thumbnail

### mt

```sh
mt -n 16 -c 4 --disable-timestamps --header=false $1
```

### mtn

```sh
mtn -c 4 -r 4 -g 3 -k 000000 -w 1920 -i -t -D 4 -P -o _mtn_.png $1
```

### vcsi

```sh
vcsi -w 1920 --metadata-position hidden $1
```

### vimg

```sh
# take animated video contact sheets
vimg vcs -c4 -n16 -H270 --avif-fps=20 $1
```

## subtitle files rename

### sub-batch

```sh
sub-batch rename --subarea ".+"
```

```sh
# rename subtitle files and synchronize subtitles to videos
sub-batch alass
```

```sh
# rename subtitle files and synchronize subtitles with mpv
sub-batch time-mpv
```

## subtitle ocr

```sh
rapid_videocr -vsf "<path_to>\VideoSubFinder\Release_x64\VideoSubFinderWXW.exe" -video_dir $1
```

## to ascii

### video-to-ascii

```sh
video-to-ascii -f $1 --strategy ascii-color
```

## subtitle show with kamite

```sh
mpv --input-ipc-server=/./pipe/kamite-mpvsocket --sub-file=$2 --sid=2 --secondary-sid=1 --secondary-sub-visibility=no --save-position-on-quit $1
```