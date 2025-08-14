# [RapidVideOCR](https://github.com/SWHL/RapidVideOCR)

## install

[^1] [^2] [^3]

```sh
# CPU
pip install rapid_videocr
```

```sh
# GPU
git clone --depth=1 https://github.com/SWHL/RapidVideOCR
uv venv
.venv\Scripts\activate.bat
uv pip install paddlepaddle-gpu==3.0.0b1 -i https://www.paddlepaddle.org.cn/packages/stable/cu123/
uv pip install get-pypi-latest-version
python setup.py install
# pip uninstall onnxruntime
# pip install onnxruntime-directml
```

## command

```sh
# CPU
rapid_videocr -o srt -i <rgb_images_dir> -s _output
```

```sh
# GPU
uv pip install rapidocr_paddle
rapid_videocr --use_cuda -o srt -i <rgb_images_dir> -s _output
```

```sh
# With VideoSubFinder
rapid_videocr -vsf "<path_to>\VideoSubFinder\Release_x64\VideoSubFinderWXW.exe" -video_dir "$1"
```

## cross-reference

- [videosubfinder.md](/opt/videosubfinder.md)

[^1]: [RapidVideOCR - 高级教程](https://swhl.github.io/RapidVideOCR/docs/tutorial/senior/)
[^2]: [飞桨 - 快速安装](https://www.paddlepaddle.org.cn/install/quick)
[^3]: [rapidocr_paddle - 安装及使用](https://rapidai.github.io/RapidOCRDocs/install_usage/rapidocr_paddle/usage/)

![rapidvideocr](/_image/optWeb/rapidvideocr.png)
