# [chaiNNer](https://github.com/chaiNNer-org/chaiNNer)

> A node-based image processing GUI aimed at making chaining image processing tasks easy and customizable. Born as an AI upscaling application, chaiNNer has grown into an extremely flexible and powerful programmatic image processing application. [chaiNNer-org/chaiNNer]

> 一个基于节点的图像处理图形用户界面，旨在使图像处理任务的链式操作变得简单且可定制。作为一款AI放大应用程序，chaiNNer发展成为一个极其灵活和强大的编程图像处理应用程序。 [chaiNNer-org/chaiNNer]

1. Get `chaiNNer-windows-x64-**.zip` from [Releases](https://github.com/chaiNNer-org/chaiNNer/releases).
2. Decompress `.zip` to `chaiNNer/`.
3. Download `cpython-3.11.5+20230826-x86_64-pc-windows-msvc-shared-install_only.tar.gz` from [integratedPython.ts](https://github.com/chaiNNer-org/chaiNNer/blob/main/src/main/python/integratedPython.ts)[^1].
4. Decompress `.tar.gz` to `python/`.
5. Put `python/` into `chaiNNer/python/`.

## Enable model architecture support

```sh
cd chaiNNer/python/python
# pytorch
python -m pip install torch==2.1.2 torchvision==0.16.2 --index-url https://download.pytorch.org/whl/cu121
python -m pip install facexlib==0.3.0 einops==0.6.1 safetensors==0.4.0 spandrel==0.3.4 spandrel-extra-arches==0.1.1
# ncnn
python -m pip install ncnn==2023.6.18
# onnx
python -m pip install onnx==1.16.0 onnxoptimizer==0.3.13 onnxruntime-gpu==1.17.1 protobuf==4.24.2
```

1. Get PyTorch models from [Model Architecture Support](https://github.com/chaiNNer-org/spandrel?tab=readme-ov-file#model-architecture-support) or get ONNX model from [Model Architecture Support](https://github.com/chaiNNer-org/chaiNNer?tab=readme-ov-file#onnx). Or find models in multiple formats on [OpenModelDB](https://openmodeldb.info/).
2. Or you can convert PyTorch model to ONNX, NCNN model in chaiNNer.
3. chaiNNer → Manage Dependencies → Packages → PyTorch, ONNX, NCNN → Install
4. Restart chaiNNer.
5. Usage with `LOAD MODEL` node and corresponding node for `PROCESSING`.

## Enable Stable Diffusion (External)

```sh
cd stable-diffusion-webui
webui-user.bat --api
```

1. chaiNNer → Settings → Advanced → Enable experimental features → Restart chaiNNer
2. chaiNNer → Use System Python instead

## reference

- [What is the difference between PyTorch, NCNN, ONNX?](https://github.com/scillidan/dictionary/blob/main/chat/what-difference/pytorch%2Cncnn%2Connx.md)
- [What is the difference between Inpainting, Denoising, DeJPEG, Colorization, Dehazing, Low-light Enhancement?](https://github.com/scillidan/dictionary/blob/main/chat/what-difference/inpainting%2Cdenoising%2Cdejpeg%2Ccolorization%2Cdehazing%2Clow-light-enhancement.md)

[^1]: [chaiNNer does not respect system proxy settings](https://github.com/chaiNNer-org/chaiNNer/issues/3043)

## appdedix

![chainner](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/opt/chainner.png)

- [chainner.mp4](https://scillidan.github.io/media_cheat/opt/chainner.mp4)
