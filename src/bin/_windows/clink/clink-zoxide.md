# [zoxide support for clink](https://github.com/shunsambongi/clink-zoxide)

## install

```sh
git clone --depth=1 https://github.com/shunsambongi/clink-zoxide
cd clink-zoxide
rm "%CMDER_ROOT%\vendor\zoxide.lua"
mklink "%CMDER_ROOT%\vendor\zoxide.lua" "%cd%\zoxide.lua"
```
