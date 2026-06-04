# [MinerU](https://github.com/opendatalab/MinerU)

### Docker compose

[^2]

```sh
# Arch
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

[^2]: [Deploying MinerU with Docker](https://opendatalab.github.io/MinerU/quick_start/docker_deployment/#start-gradio-webui-service)