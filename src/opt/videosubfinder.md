# [VideoSubFinder](https://sourceforge.net/projects/videosubfinder/)

> The main purpose of this program is to provide functionality for extract hardcoded subtitles (hardsub) from video.  
> It provides two main features:  
> 1. Autodetection of frames with hardcoded text (hardsub) on video with saving info about timing positions.  
> 2. Generation of cleared from background text images, which allows with usage of OCR programs (like FineReader, Subtitle Edit, Google Drive) to generate complete subtitles with original text and timing. [sourceforge.net/projects/videosubfinder]

> 这个程序的主要目的是提供从视频中提取硬编码字幕（hardsub）的功能。  
> 它提供两个主要功能：  
> 1. 自动检测视频中带有硬编码文本（hardsub）的帧，并保存关于时间位置的信息。  
> 2. 生成去背景的清晰文本图像，这使得使用OCR程序（如FineReader、Subtitle Edit、Google Drive）能够生成包含原始文本和时间的完整字幕。 [sourceforge.net/projects/videosubfinder]

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

## cross-reference

### extra

- [rapidvideocr.md](/bin/rapidvideocr.md)

## appdedix

- [videosubfinder.mp4](https://scillidan.github.io/media_cheat/opt/videosubfinder.mp4)
