# [IOPaint](https://github.com/Sanster/IOPaint)

![](https://img.shields.io/github/license/Sanster/IOPaint)

## install

```sh
git clone --depth=1 https://github.com/Sanster/IOPaint
cd IOPaint/web_app
# nvm use 22.14.0
npm install
npm run build
cp -r dist/ ../iopaint/web_app
cd ..
uv venv --python 3.10
.venv\Scripts\activate.bat
uv pip install torch torchvision --index-url https://download.pytorch.org/whl/cu121
uv pip install -e .
```

## usage

```sh
cd IOPaint/web_app
npm run dev
```

```sh
# Run in new terminial window
cd IOPaint
# uv pip install gfpgan realesrgan rembg realesrgan onnxruntime
iopaint start --model=lama --port=8080
```

## Optional

### [Interactive Segmentation](https://www.iopaint.com/plugins/interactive_seg)

```sh
iopaint start --model=lama --port=8080 --enable-interactive-seg --interactive-seg-device=cuda
```

### [GFPGAN](https://www.iopaint.com/plugins/GFPGAN)

```sh
uv pip install gfpgan
iopaint start --model=lama --port=8080 --enable-gfpgan --gfpgan-device cuda
```

### [RealESRGAN](https://www.iopaint.com/plugins/RealESRGAN)

```sh
uv pip install realesrgan
iopaint start --model=lama --port=8080 --enable-realesrgan --realesrgan-model RealESRGAN_x4plus --realesrgan-device cuda
```

### [Remove Background](https://www.iopaint.com/plugins/rembg)

```sh
uv pip install rembg
iopaint start --model=lama --port=8080 --enable-remove-bg
```

### [RestoreFormer](https://www.iopaint.com/plugins/RestoreFormer)

```sh
uv pip install realesrgan
iopaint start --model=lama --port=8080 --enable-restoreformer --restoreformer-device cuda
```

### [Anime Segmentation](https://www.iopaint.com/plugins/anime_seg)

```sh
iopaint start --model=lama --port=8080 --enable-anime-seg
```

## appdedix

![iopaint](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/iopaint.png)
