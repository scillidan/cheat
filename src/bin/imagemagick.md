# [ImageMagick](https://www.imagemagick.org)

## install

```sh
# Arch
sudo pacman -S imagemagick
# Windows 10
scoop install imagemagick
```

## usage

### command

```sh
# Add a border to an image
magick convert "$1" -bordercolor "#000" -border 1 "_border.png"

# Convert multiple PNG/JPEG images to a single PDF
magick convert "*.{png,jpeg}" -quality 100 "_output.pdf"

# Create a montage from an image
magick montage "$1" -resize 750x -geometry +0+0 -tile 1x "_montage.png"

# Crop the image from the top, keeping only the bottom 1500 pixels
magick convert "$1" -crop x1500 "_%d.png"

# Negate an image
magick convert "$1" -channel RGB -negate _negate.png

# Resize the image to a height of 1600 pixels with maximum quality
magick convert "$1" -resize x1600 -quality 100 "_*.jpg"

# Apply paint effect to the image
magick convert "$1" -paint 3 "$2"

# Apply charcoal effect
magick convert "$1" -charcoal 2 "$2"

# Apply ordered dithering (gray)
magick convert "$1" -colorspace Gray -ordered-dither o2x2 "_dither.png"

# Apply ordered dithering (8 colors)
magick convert "$1" -ordered-dither h4x4o -colors 8 "_dither.png"

# Apply sketch effect
magick convert "$1" -colorspace gray -sketch 0x10+120 "_sketch.png"

# Convert BMP file to PNG format
magick mogrify -format png "$1"
```

## reference

- #blog [Image Dithering: Eleven Algorithms and Source Code](https://tannerhelland.com/2012/12/28/dithering-eleven-algorithms-source-code.html)
- #option [ImageMagick](https://imagemagick.org/script/command-line-processing.php)
- #post [Image file type and format guide](https://developer.mozilla.org/en-US/docs/Web/Media/Guides/Formats/Image_types)
- [Recommendation for compressing JPG files with ImageMagick](https://stackoverflow.com/questions/7261855/recommendation-for-compressing-jpg-files-with-imagemagick)
- [Invert colors with ImageMagick](https://superuser.com/questions/1194468/invert-colors-with-imagemagick)
- [convert images to pdf](https://askubuntu.com/questions/493584/convert-images-to-pdf)
- [Rotate images in Windows with ImageMagick](https://scribbleghost.net/2020/10/12/rotate-images-in-windows-with-imagemagick/)

## troubleshoot

- [Error RegistryKeyLookupFailed `CoderModulesPath'](https://github.com/ImageMagick/ImageMagick/discussions/6807)
