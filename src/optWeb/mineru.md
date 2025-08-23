# [MinerU](https://github.com/opendatalab/MinerU)

![](https://img.shields.io/github/license/opendatalab/MinerU) ![](https://img.shields.io/github/last-commit/scillidan/MinerU/main?label=last%20commit%20(fork)) ![](https://img.shields.io/badge/GitHub%20Pages-121013?logo=github&logoColor=white)

### Pip

[^1]

```sh
mkdir MinerU
cd MinerU
uv venv
source .venv/bin/activate
uv pip install -U "mineru[core]"
```

### Docker compose

[^2]

```sh
# sudo pacman -S nvidia nvidia-utils nvidia-container-toolkit
mkdir mineru
cd mineru
wget https://gcore.jsdelivr.net/gh/opendatalab/MinerU@master/docker/compose.yaml
sudo docker compose -f compose.yaml --profile gradio up -d
```

### Conda

```sh
# Outdate
conda create -n MinerU python=3.10
conda activate MinerU
pip install -U magic-pdf[full] --extra-index-url https://wheels.myhloli.com
pip install modelscope
wget https://gcore.jsdelivr.net/gh/opendatalab/MinerU@master/scripts/download_models.py -O download_models.py
python download_models.py
```

## usage

```sh
# Cli
mineru -p <input_path> -o <output_path>
# WebUI
mineru-gradio --server-name 0.0.0.0 --server-port 7860
```

[^1]: [Quick Start](https://opendatalab.github.io/MinerU/quick_start/)
[^2]: [Deploying MinerU with Docker](https://opendatalab.github.io/MinerU/quick_start/docker_deployment/#start-gradio-webui-service)
