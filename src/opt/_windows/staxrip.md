# [StaxRip](https://github.com/staxrip/staxrip)

> StaxRip is a powerful video/audio encoding GUI for Windows.  
> It executes and controls console apps such as x265, mkvmerge, ffmpeg, etc. and uses scripting based frame servers, AviSynth+ and VapourSynth, for video processing. Each project can also be extended by various events and settings. [staxrip/staxrip]

> StaxRip是一个强大的Windows视频/音频编码图形用户界面。  
> 它执行和控制如x265、mkvmerge、ffmpeg等控制台应用程序，并使用基于脚本的帧服务器AviSynth+和VapourSynth进行视频处理。每个项目还可以通过各种事件和设置进行扩展。 [staxrip/staxrip]

## install

```sh
scoop install staxrip
```

## usage

### 1080p-30fps-nvenc

- Staxrip
	- AVS Filters
		- Resize (On)
		- Add → Frame Rate → AssumeFPS → 30
	- MKV → X265 → Change to → NVEncC (Nvidia) → H.264
		- Encoder Options → Input/Output → Decoder → NVEnc Software
	- Add job → Start

## reference

- #blog [StaxRip烧录硬字幕踩坑记录](https://sspai.com/post/88056)
- #guide [x265-encoding-tutorial](https://staxrip.github.io/x265-encoding-tutorial/)

## appdedix

- [staxrip.mp4](https://scillidan.github.io/media_cheat/opt/_windows/staxrip.mp4)
