# [uv](https://docs.astral.sh/uv)

## install

```sh
# Arch
sudo pacman -S uv
# Windows 10
scoop install uv
```

## usage

```sh
# Install a specific version
uv python list
uv python install 3.10
uv python pin 3.10
```

```sh
# Install a package
uv tool install <pkg>
```

```sh
# Create a virtual environment
uv venv .venv --python <version>
uv venv
# Arch
source .venv/Scripts/activate
deactivate
# Windows 10
.venv\Scripts\activate.bat
deactivate.bat
```
