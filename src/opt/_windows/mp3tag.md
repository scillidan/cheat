# [Mp3tag](https://www.mp3tag.de/en/index.html)

## install

```sh
scoop install mp3tag
```

```pwsh
# Install context menu option
start 'regsvr32' -Verb 'RunAs' -Args @("C:\Users\User\Scoop\apps\mp3tag\current\Mp3tagShell.dll", '/s')
# Uninstall context menu option
start 'regsvr32' -Verb 'RunAs' -Args @('/u', "C:\Users\User\Scoop\apps\mp3tag\current\Mp3tagShell.dll", '/s')
```

## reference

- #sheet [Tag Field Mappings](https://docs.mp3tag.de/mapping/)

## appdedix

![mp3tag](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/opt/_windows/mp3tag.png)
