# [Python](https://www.python.org)

## install

```sh
# Windows 10
scoop install python310
```

## Personal do

```sh
python -m pip install pipx
pipx ensurepath
```

## Publish python package

[^1]

```sh
python -m pip install -e .
python -m pip install build twine
python setup.py sdist bdist_wheel
python -m build
```

## reference

- #blog [How to run Python in production](https://ashishb.net/programming/python-in-production-2)
- #blog [Python dependency management is a dumpster fire](https://nielscautaerts.xyz/python-dependency-management-is-a-dumpster-fire.html)
- #guide [How to Install Python 3.9 on Ubuntu 22.04](https://vegastack.com/tutorials/how-to-install-python-3-9-on-ubuntu-22-04/)
- #lession [30 Days Of Python](https://github.com/Asabeneh/30-Days-Of-Python)
- #lession [Build an Asteroids Game With Python and Pygame](https://realpython.com/asteroids-game-python)
- #lession [FullStack Web Development with Python](https://github.com/Alexandrbig1/py-web)

[^1]: [How to Publish an Open-Source Python Package to PyPI](https://realpython.com/pypi-publish-python-package/)
