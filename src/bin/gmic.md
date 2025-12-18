# [G'MIC](https://gmic.eu)

## usage

### command

```sh
# Apply match patch with warping
gmic "$1" "$2" +matchpatch[0] [1],3 +warp[-2] [-1],0

# Convert from sRGB to Lab color space, blend shapes
gmic "$1" +srgb2lab slic[-1] 16 +blend shapeaverage f[-2] "j(1,0)==i && j(0,1)==i" *[-1] [-2]

# Frame with specific parameters
gmic "$1" frame_xy 1,1,0 frame_xy 10,5,0,0,0

# Create a grid overlay on the image
gmic "$1" grid 10%,16%,0,0,0.2,255

# Apply Kuwahara filter to the image
gmic "$1" kuwahara 9

# Create a montage from the image
gmic "$1" montage H1:V0:VH2:1H0:3

# Quantize colors and apply blur
gmic "$1" quantize 6 blur 1 round[-1] quantize_area[-1] 2

# Quantize and split colors for display
gmic "$1" quantize 3 +split_colors , display_rgba

# Segment the image using watershed algorithm
gmic "$1" segment_watershed 4

# Apply topographic map effect
gmic "$1" topographic_map 10
```
