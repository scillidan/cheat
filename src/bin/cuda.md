# [CUDA](https://developer.nvidia.com/cuda-toolkit)

## install

### Windows 10

1. Check [Your GPU Compute Capability](https://developer.nvidia.com/cuda-gpus).  
2. Install `python 3.*` from [Python Releases for Windows](https://www.python.org/downloads/windows/).
3. Install `CUDA` from [CUDA Toolkit - Downloads](https://developer.nvidia.com/cuda-downloads).
4. Check [PyTorch - Start Locally](https://pytorch.org/get-started/locally/) to install `torch``.

```sh
# Check
python --version
nvcc -V
```

```sh
echo %CUDA_PATH%
echo %CUDNN%
```

## reference

- #guide [Steps to manage multiple CUDA environments](https://gist.github.com/garg-aayush/156ec6ddda3d62e2c0ddad00b7e66956)