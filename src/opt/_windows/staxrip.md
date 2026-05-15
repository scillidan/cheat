# [StaxRip](https://github.com/staxrip/staxrip)

## usage

### 1080p-30fps-nvenc

- Staxrip
	- AVS Filters
		- Resize (On)
		- Add → Frame Rate → AssumeFPS → 30
	- MKV → X265 → Change to → NVEncC (Nvidia) → H.264
		- Encoder Options → Input/Output → Decoder → NVEnc Software
	- Add job → Start