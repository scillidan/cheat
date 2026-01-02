# [Clink Gizmos](https://github.com/chrisant996/clink-gizmos)

## install

```sh
git clone --depth=1 https://github.com/chrisant996/clink-gizmos
cd clink-gizmos
rm "%CMDER_ROOT%\vendor\fuzzy_history.lua"
mklink "%CMDER_ROOT%\vendor\fuzzy_history.lua" "%cd%\fuzzy_history.lua"
```
