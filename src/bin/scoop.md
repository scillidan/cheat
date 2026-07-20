# [Scoop](https://scoop.sh)

## install

[^1] [^2] [^3]

```pwsh
Set-ExecutionPolicy ByPass -Scope Process -Force
# If scoop installed or need installing second scoop (into a NTFS mount), 
# Remove any `scoop` in PATH and Modify following two in ENV. Until the installation is complete.
$env:SCOOP='<path_to>\Scoop'
$env:SCOOP_GLOBAL='<path_to>\Scoop'
[Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
Get-ChildItem Env:
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
```

Or Download `Source code (zip)` from [Releases](https://github.com/ScoopInstaller/Scoop/releases).

```pwsh
set SCOOP_PORTABLE=U:\Usr\Scoop
mkdir -p %SCOOP_PORTABLE%\apps\scoop
unzip "<path_to>\Scoop-0.5.3.zip"
mv <path_to>\Scoop-0.5.3 %SCOOP_PORTABLE%\apps\scoop\current
git clone --depth=1 https://github.com/ScoopInstaller/Main %SCOOP_PORTABLE%\buckets\main
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
```

[^1]: [Scoop (un)installer](https://github.com/ScoopInstaller/Install#advanced-installation)
[^2]: [CMD.exe wrapper](https://github.com/shilangyu/scoop-search#cmdexe-wrapper)
[^3]: [About the Download Directory](https://github.com/ScoopInstaller/Scoop/issues/3666)
[^4]: [scoop update fails to connect to GitHub](https://github.com/ScoopInstaller/Scoop/issues/3124)