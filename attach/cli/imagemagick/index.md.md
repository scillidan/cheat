

## charcoal

```sh
magick convert $1 -charcoal 2 $2
```

## dither

```sh
magick convert $1 -colorspace Gray -ordered-dither o2x2 _dither_.png
```

```sh
magick convert $1 -ordered-dither h4x4o -colors 8 _dither_.png
```
## sketch

```sh
magick convert $1 -colorspace gray -sketch 0x10+120 _sketch_.png
```