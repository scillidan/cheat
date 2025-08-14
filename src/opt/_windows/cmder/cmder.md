# [Cmder](https://cmder.app/)

## install

```sh
scoop install clink clink-completions conemu
```

## Personal do

```sh
mkdir "%USERPROFILE%/Usr/Source/cmder"
cd "%USERPROFILE%/Usr/Source/cmder"
git clone --depth=1 https://github.com/chrisant996/clink-fzf
git clone --depth=1 https://github.com/chrisant996/clink-gizmos
git clone --depth=1 https://github.com/davidmarek/clink-git-extensions
git clone --depth=1 https://github.com/mwmi/clink-carapace
git clone --depth=1 https://github.com/shunsambongi/clink-zoxide
git clone --depth=1 https://github.com/tadashi-aikawa/owl-cmder-tools
```

```sh
set "CMDER_HOME=%USERPROFILE%\Usr\Opt\cmder_mini"
set "CMDER_SRC=%USERPROFILE%\Usr\Source\cmder"

del "CMDER_HOME%\config\clink_settings"
del "CMDER_HOME%\config\starship.lua"
del "CMDER_HOME%\config\user_aliases.cmd"
del "CMDER_HOME%\config\user_profile.cmd"
del "CMDER_HOME%\config\user_prompt.lua"
mklink "%CMDER_HOME%\config\clink_settings" "%DOTFILES_DIR%\.config\_windows_cmder\config\clink_settings"
mklink "%CMDER_HOME%\config\starship.lua" "%DOTFILES_DIR%\.config\_windows_cmder\config\starship.lua"
mklink "%CMDER_HOME%\config\user_aliases.cmd" "%DOTFILES_DIR%\.config\_windows_cmder\config\user_aliases.cmd"
mklink "%CMDER_HOME%\config\user_profile.cmd" "%DOTFILES_DIR%\.config\_windows_cmder\config\user_profile.cmd"
mklink "%CMDER_HOME%\config\user_prompt.lua" "%DOTFILES_DIR%\.config\_windows_cmder\config\user_prompt.lua"

del "%CMDER_HOME%\vendor\fzf.lua"
del "%CMDER_HOME%\vendor\setpath.bat"
rmdir /S /Q "%CMDER_HOME%\vendor\clink"
rmdir /S /Q "%CMDER_HOME%\vendor\clink-completions"
rmdir /S /Q "%CMDER_HOME%\vendor\conemu-maximus5"
mklink "%CMDER_HOME%\vendor\fzf.lua" %DOTFILES_DIR%\.config\_windows_cmder\vendor\fzf.lua"
mklink "%CMDER_HOME%\vendor\setpath.bat" "%DOTFILES_DIR%\.config\_windows_cmder\vendor\setpath.bat"
mklink /J "%CMDER_HOME%\vendor\clink" "%SCOOP_HOME%\apps\clink\current"
mklink /J "%CMDER_HOME%\vendor\clink-completions" "%SCOOP_HOME%\apps\clink-completions\current"
mklink /J "%CMDER_HOME%\vendor\conemu-maximus5" "%SCOOP_HOME%\apps\conemu\current"

del "%CMDER_HOME%\vendor\fuzzy_history.lua
mklink "%CMDER_HOME%\vendor\fuzzy_history.lua" %CMDER_SRC%\clink-gizmos\fuzzy_history.lua"

del "%CMDER_HOME%\vendor\git_aliases_autocomplete.lua
del "%CMDER_HOME%\vendor\git_branch_autocomplete.lua
mklink "%CMDER_HOME%\vendor\git_aliases_autocomplete.lua" %CMDER_SRC%\clink-git-extensions\git_aliases_autocomplete.lua"
mklink "%CMDER_HOME%\vendor\git_branch_autocomplete.lua" %CMDER_SRC%\clink-git-extensions\git_branch_autocomplete.lua"

del "%CMDER_HOME%\vendor\carapace.lua"
del "%CMDER_HOME%\vendor\matchicons.lua"
mklink "%CMDER_HOME%\vendor\carapace.lua" %CMDER_SRC%\clink-carapace\carapace.lua"
mklink "%CMDER_HOME%\vendor\matchicons.lua" %CMDER_SRC%\clink-gizmos\matchicons.lua"

del "%CMDER_HOME%\vendor\zoxide.lua
mklink "%CMDER_HOME%\vendor\zoxide.lua" %CMDER_SRC%\clink-zoxide\zoxide.lua"

del "%CMDER_HOME%\config\cdz.lua"
mklink "%CMDER_HOME%\config\cdz.lua" %CMDER_SRC%\owl-cmder-tools\config\cdz.lua"
```

## config

Cmder → Settings → Import → `user-ConEmu.xml`.

## reference

- #document [Clink](https://chrisant996.github.io/clink/clink.html)
- [Shortcut to open Cmder in a chosen folder](https://github.com/cmderdev/cmder#shortcut-to-open-cmder-in-a-chosen-folder)
- [set PATH with multiple lines](https://stackoverflow.com/questions/40909459/set-path-with-multiple-lines)
- [Terminal sizes](https://help.gnome.org/users/gnome-terminal/stable/app-terminal-sizes.html.en)

## resource

### mark

- #clink [clink carapace](https://github.com/mwmi/clink-carapace)
- #clink [Clink Gizmos](https://github.com/chrisant996/clink-gizmos) _commit_
- #clink [clink-completions](https://github.com/vladimir-kotikov/clink-completions) _release_
- #clink [clink-git-extensions](https://github.com/davidmarek/clink-git-extensions) _commit_
- #clink [FZF integration for Clink](https://github.com/chrisant996/clink-fzf) _commit_
- #clink [HomeClink](https://github.com/HeyItsJono/HomeClink) _commit_
- #clink [zoxide support for clink](https://github.com/shunsambongi/clink-zoxide) _commit_
- [Clink](https://github.com/chrisant996/clink) _release_
- [ConEmu](https://github.com/Maximus5/ConEmu) _release_
- [Owl Cmder Tools](https://github.com/tadashi-aikawa/owl-cmder-tools)

### extra

- [Color Schemes for ConEmu](https://github.com/hasansujon786/Cmder-Color-Themes)

### cache

- #clink [CheatCompletions](https://github.com/HeyItsJono/CheatCompletions)
- [clink-flex-prompt](https://github.com/chrisant996/clink-flex-prompt)
- [z.lua](https://github.com/skywind3000/z.lua)

![colorcheme_fakenight](/_image/opt/_windows/cmder/colorcheme_fakenight.png)
![colorscheme_vanta](/_image/opt/_windows/cmder/colorscheme_vanta.png)
