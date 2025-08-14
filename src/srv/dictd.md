# [dictd](https://linux.die.net/man/8/dictd)

## install

### Ubuntu 22 ARM

[^1]

```sh
sudo apt install dictd
sudo vim /etc/dictd/dictd.conf
```

```
global {
    listen_to 0.0.0.0
    port 2628
}

access {
  allow *
}

include /var/lib/dictd/db.list

#LASTLINE
```

```sh
sudo vim /var/lib/dictd/db.list
```

```
# For example
database ecdict {
	data <path_to>/dictd/ecdict.dict.dz
	index <path_to>/dictd/ecdict.index
}
...
```

```sh
sudo systemctl enable --now dictd.service
systemctl status dictd.service
```

### Arch

```sh
sudo pacman -S dictd
yay -S --noconfirm dictd-wn
```

```sh
sudo vim /etc/dict/dictd.conf
```

```
global {
    listen_to localhost
    port 2628
}

access {
  allow *
}

# For example
database wn {
	data /usr/share/dictd/wn.dict.dz
	index /usr/share/dictd/wn.index
}
database ecdict {
	data /usr/share/dictd/ecdict.dict.dz
	index /usr/share/dictd/ecdict.index
}
database chibigenc {
	data /usr/share/dictd/chibigenc.dict.dz
	index /usr/share/dictd/chibigenc.index
}
database chibigenc-sc {
	data /usr/share/dictd/chibigenc-sc.dict.dz
	index /usr/share/dictd/chibigenc-sc.index
}
database gcide {
	data /usr/share/dictd/gcide.dict.dz
	index /usr/share/dictd/gcide.index
}
database 21th-en22zh {
	data /usr/share/dictd/21shijishuangxiangcidian.dict.dz
	index /usr/share/dictd/21shijishuangxiangcidian.index
}
database etymonline {
	data /usr/share/dictd/etymonline.dict.dz
	index /usr/share/dictd/etymonline.index
}
database dict-en-en {
	data /usr/share/dictd/dict-en-en.dict.dz
	index /usr/share/dictd/dict-en-en.index
}
database wikdict-en-zh {
	data /usr/share/dictd/wikdict-en-zh.dict.dz
	index /usr/share/dictd/wikdict-en-zh.index
}

#LASTLINE
```

```sh
sudo vim /etc/dict/dict.conf
```

```sh
server localhost
# server dict.org
```

```sh
sudo systemctl enable --now dictd.service
```

## usage

```sh
dict --host localhost --port 2528 -I -v
dict -h localhost -p 2528 -d <database> <word>
```

## cross-reference

- [dict-ecdict.md](/bin/dict-ecdict.md)

## asset

- [file_dictd](https://github.com/scillidan/file_dictd)

[^1]: [dictd.conf](https://gist.github.com/wind0204/d65c7d1b5d7794c4c7fa1a02d5151acc)
