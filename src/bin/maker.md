# [marker](https://github.com/VikParuchuri/marker)

## install

```sh
uv venv .marker --python 3.12
.marker\Scripts\activate.bat
uv pip install marker-pdf
# uv pip install hf_transfer
```

## usage

```sh
# As CLI
marker_single <pdf> --output_dir <output_dir> --page_range 1-5
```

```sh
# As GUI
uv pip install streamlit
marker_gui
```
