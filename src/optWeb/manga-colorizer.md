# [Manga-Colorizer](https://github.com/BinitDOX/Manga-Colorizer)

![](https://img.shields.io/github/license/BinitDOX/Manga-Colorizer)

### From source

```sh
git clone --depth=1 https://github.com/BinitDOX/Manga-Colorizer
cd Manga-Colorizer/Backend
uv venv
.venv\Scripts\activate
uv pip install torch torchvision --index-url https://download.pytorch.org/whl/cu121
uv pip install -r Backend/requirements.txt
uv pip install einops
python app-stream.py
```
