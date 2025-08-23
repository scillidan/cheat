# [abogen](https://github.com/denizsafak/abogen)

## install

```sh
# Arch
python -m venv .abogen
source .abogen/bin/activate
pip3 install abogen
# AMD
pip3 uninstall torch 
pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm6.4
ln -sfn $(pwd)/.abogen/bin/abogen ~/.local/bin/abogen
deactivate
```
