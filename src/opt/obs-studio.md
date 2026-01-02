# [OBS Studio](https://obsproject.com/)

## install

```sh
# Windows 10
scoop install obs-studio
```

## config

### Windows 10

[^1] [^2]

- OBS Studio → Settings → Output → Output Mode → Advanced
	- Streaming
		- Video Encoder → NVIDIA NVENC H.264
		- Encoder Settings
			```
			Rate Control: Constant QP
			Constant QP: 16
			Keyframe interval: 2s
			Preset: P5: Slow (Good Quality)
			Tuning: High Quality
			Multipass Mode: Two Passed (Quarter Resolution)
			Profile: high
				Look-ahead (Off)
				Adaptive Quantization (On)
			B-Frames: 2
			```
		- Recording → Video Encoder → (Use stream encoder)
		- Audio → Track1 → Audio Bitrate → 320
	- Audio → General → Sample Rate → 44.1 kHz
	- Video → General → Common FPS Values → 60

## usage

- Select one on tab `<Sources>` → Filters → Effect Filters → Add → Color Key.

## reference

- [YouTube 推荐的上传编码设置](https://support.google.com/youtube/answer/1722171)

[^1]: [Advanced Recording Settings Guide](https://obsproject.com/kb/advanced-recording-settings-guide)
[^2]: [Best OBS Settings for Streamers: Tips & Tricks](https://wpstream.net/obs-settings/)
