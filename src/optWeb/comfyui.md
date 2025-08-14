# [ComfyUI](https://github.com/comfyanonymous/ComfyUI)

![](https://img.shields.io/github/license/comfyanonymous/ComfyUI)

## With Nvidia

```sh
git clone --depth=1 https://github.com/comfyanonymous/ComfyUI
cd ComfyUI
python -m venv .venv
.venv\Scripts\activate.bat
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128
pip install -r requirements.txt
```

```sh
python main.py
```

## With AMD (Cache) { #with-amd }

[^1]

```sh
git clone --depth=1 https://github.com/comfyanonymous/ComfyUI
cd ComfyUI
python -m venv .venv
.venv\Scripts\activate.bat
pip install -r requirements.txt
pip install torch-directml
set HSA_OVERRIDE_GFX_VERSION=10.3.0
```

```sh
python main.py --directml
```

## config

- ComfyUI → Manager
	- Custom Nodes Manager → Search → Install
	- Install Missing Custom Nodes

## requirement

- [CUDA Toolkit 12.8](https://developer.nvidia.com/cuda-12-8-0-download-archive)

## resource

### mark

- [ComfyUI Manager](https://github.com/ltdrdata/ComfyUI-Manager)

### later

- [KokoroTTS Node](https://github.com/MushroomFleet/DJZ-KokoroTTS)

### cache

- #txt2img [ComfyUI wrapper for Kwai-Kolors](https://github.com/kijai/ComfyUI-KwaiKolorsWrapper)
- [CImaGen](https://github.com/ServOKio/CImaGen)
- [ComfyUI IPAdapter plus](https://github.com/cubiq/ComfyUI_IPAdapter_plus)
- [ComfyUI nodes to use LivePortrait](https://github.com/kijai/ComfyUI-LivePortraitKJ)
- [ComfyUI Segment Anything](https://github.com/storyicon/comfyui_segment_anything)
- [ComfyUI wrapper nodes for WanVideo and related models.](https://github.com/kijai/ComfyUI-WanVideoWrapper)
- [ComfyUI-CogVideoXWrapper](https://github.com/kijai/ComfyUI-CogVideoXWrapper)
- [ComfyUI-Inspyrenet-Rembg](https://github.com/john-mnz/ComfyUI-Inspyrenet-Rembg)
- [UmeAiRT - ComfyUI auto installer](https://huggingface.co/UmeAiRT/ComfyUI-Auto_installer)

[^1]: [Installing ComfyUI on Windows for AMD GPUs](https://atlassc.net/2025/01/15/installing-comfyui-on-windows-for-amd-gpus)
