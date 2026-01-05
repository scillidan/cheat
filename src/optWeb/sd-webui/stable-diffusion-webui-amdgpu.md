# [Stable Diffusion web UI for AMDGPUs](https://github.com/lshqqytiger/stable-diffusion-webui-amdgpu)

## install

```sh
git clone --depth=1 https://github.com/lshqqytiger/stable-diffusion-webui-amdgpu
cd stable-diffusion-webui-amdgpu
python -m venv .venv
.venv\Scripts\activate
```

```sh
subl webui-user.bat
```

```batch
set COMMANDLINE_ARGS="--use-directml"
```

## usage

```sh
pip install hf_transfer
webui-user.bat
```
