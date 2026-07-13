# [VideoSubFinder](https://sourceforge.net/projects/videosubfinder/)

## install

### Windows 10

1. Get `VideoSubFinder` form [SourceForge](https://sourceforge.net/projects/videosubfinder/).
2. Decompress `VideoSubFinder_*.zip` to `VideoSubFinder`.
3. Run `VideoSubFinderWXW.exe`.

### Arch

```sh
yay -S --noconfirm videosubfinder
```

## config

- VideoSubFinder → Settings → Parameters Influencing Image Processing (Optional):
	```
	FFMPEG Video Devices: cuda
	Use CUDA GPU Acceleration: On
	```
2. File → Open Video.
3. Run Search → When shows subtitle, Stop Search → Modify the ScanBox.
4. Begin Time → `00:00:00:000` → Run Search.
5. Output will be on `./RGBImages/`.