# [Streamlit Image Crop](https://github.com/mitsuse/streamlit-image-crop)

![](https://img.shields.io/github/license/mitsuse/streamlit-image-crop)

## install

[^1]

```sh
git clone --depth=1 https://github.com/mitsuse/streamlit-image-crop
cd streamlit-image-crop
uv python install 3.8.20
uv venv --python 3.8.20
.venv\Scripts\activate
uv pip install poetry
poetry install
```

```sh
cd streamlit_image_crop/frontend
nvm install 16.20.0
nvm use 16.20.0
npm install
npm run build
```

## usage

```sh
cd streamlit_image_crop/frontend
serve -s build -l 4321
```

```sh
# In a new terminal session
cd streamlit_image_crop
uv pip install -U click==8
streamlit run example.py
````

[^1]: [click.get_os_args is deprecated on module 'click 8.1.0'](https://github.com/streamlit/streamlit/issues/4555)

## appdedix

![streamlit-image-crop](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/streamlit-image-crop.png)
