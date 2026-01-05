# [uv](https://docs.astral.sh/uv)

## install

```sh
# Arch
sudo pacman -S uv
# Windows 10
scoop install python310
scoop install python311
scoop install python312
scoop install uv
```

## usage

```sh
# Install a specific version
uv python list
uv python install <version>
uv python pin <version>
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
.venv\Scripts\activate
deactivate.bat
```

```sh
# Create a virtual environment and install all dependencies
# Or sync virtual environment
uv sync
```

```sh
# Activate the virtual environment and execute a command
uv run <script> <input_text>
```

```sh
# Install in development/editable mode
uv pip install -e .
```

```sh
# Initialize a project
uv init <project> --name <package> --python 3.12
```