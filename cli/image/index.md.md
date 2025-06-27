

## .cast to gif

```sh
agg --theme 1F1F28,FFFFFF,1F1F28,D55FFF,A6E22E,F4BF75,66D9EF,AE81FF,A1EFE4,F8F8F2,75715E,D55FFF,A6E22E,F4BF75,66D9EF,AE81FF,A1EFE4,F9F8F5 --speed 1.5 --font-family "JetBrainsMono Nerd Font Mono" --font-size 14 --fps-cap 30 $1 _cast2_.gif
```

```sh
agg --theme asciinema --speed 1.5 --font-family "JetBrainsMono Nerd Font Mono" --font-size 14 --fps-cap 30 $1 _cast2_.gif
```

## .png to favicon

### faviator

```sh
faviator --size 512 --text $1 --font-size 12 --font-family "Pridi" --font-color #000 --font-weight 400 --background-color #fff --border-width 0 --border-color 0 --border-radius 0 -o favicon.png
```

### favocon

```sh
favocon $1 -o ./favicon
```

## .png to ico

### png-to-ico

```sh
png-to-ico $1 > _png2_.ico
```

## .png to svg

### png2svg

```sh
png2svg -v -l -o $1 _png2_.svg
```

## .gif optimize

### gifski

```sh
gifski -o _opti_.gif $1
```

```sh
gifski --width 600 --height 600 --fps 10 -o _opti_.gif $1
```

### gifsicle

```sh
gifsicle -O3 --lossy=80 --resize-width 600 $1 -o _opti_.gif
```

```sh
gifsicle --lossy=80 -k 128 -O2 --keep-empty $1 -o _opti_.gif
```

### oxipng

```sh
oxipng -o 4 -i 1 --strip safe *.png
```

## .svg to png

### svg2png

```sh
svg2png $1 -w <width>
```

## color

### paletter

```sh
paletter -colors <num> $1
```

### color-matcher

```sh
color-matcher -s $1 -r $2
```

### ImageTheming

```sh
java -jar imagetheming/build/libs/ImageTheming.jar $1 -t=<theme>
```

### pyxelate

```sh
pyxelate $1 _pal_.png --factor 9 --upscale 5 --palette 10 --nosvd
```

## crop

### autocrop

```sh
autocrop $1 _ac_$1 0.1
```

```sh
# crop face
autocrop -i <input_dir> -o <output_dir> -w 400 -H 400 -e png
```

## extract
### komga-cover-extractor

```sh
python <path_to>/komga-cover-extractor/komga_cover_extractor.py -c "True" -cq "70" -p .
```

### split_manga_pages

```sh
split_manga_pages -d <dir> -m all
```

## generate

### silicon

```sh
silicon --from-clipboard --language $1 --theme "tokyonight_moon" --font "'MonaspiceNe NFP + Sarasa Gothic SC + WFM Sans SC'=16" --no-window-controls --pad-horiz 0 --pad-vert 0 --background "#222436" --tab-width 2 --line-offset 0 --line-pad 4 --output _silicon_.png
```

```sh
silicon --from-clipboard --language "Text" --font "'MonaspiceNe NFP + Sarasa Gothic SC + WFM Sans SC'=16" --no-window-controls --pad-horiz 0 --pad-vert 0 --background "#fffff8" --tab-width 2 --line-offset 0 --line-pad 4 --output _silicon_.png
```

### fishdraw.js

```sh
node ./fishdraw/fishdraw.js --seed $1 --format smil --speed 2 > _gen_.svg
```

### legc

```sh
node ./legumes/legc --format svg --stem-length 3 --title-text-size 28 --page-margin-x 120 $1 > _gen_.svg
```

## optimize
### yoga

```sh
yoga image --resize 1920 $1 _yoga_.png
```

## remove background

### rembg

```sh
rembg i -a -ae 15 $1 _rembg_.png
```

## to ascii

### ascii-image-converter

```sh
ascii-image-converter $1 -C -b --dither -d 100,35
```

### ascii-silhouettify

```sh
ascii-silhouettify --input $1
```

## to svg

### autotrace

```sh
magick convert $1 -define bmp:format=bmp3 _2_.bmp && autotrace -output-file _img2_.svg -input-format bmp -despeckle-level <level> -color-count <num> _2_.bmp
```

### vtracer

```sh
vtracer -i $1 -o _vtracer_.svg
```

