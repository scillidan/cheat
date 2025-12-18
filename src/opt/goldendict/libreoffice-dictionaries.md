# [LibreOffice/dictionaries](https://github.com/LibreOffice/dictionaries)

## install

```sh
git clone --depth=1 https://github.com/LibreOffice/dictionaries
cd dictionaries
```

```sh
# Windows 10
set "GD_HOME=%SCOOP%\apps\goldendict\current"
rmdir /S /Q "%GD_HOME%\content"
mkdir "%GD_HOME%\content"
mkdir "%GD_HOME%\content\morphology"
mklink "%GD_HOME%\content\morphology\en_US.aff" "%cd%\en\en_US.aff"
mklink "%GD_HOME%\content\morphology\en_US.dic" "%cd%\en\en_US.dic"
...
```
