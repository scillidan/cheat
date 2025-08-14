# [SilverDict](https://github.com/Crissium/SilverDict)

## install

```sh
# Ubuntu 22 ARM
git clone --depth=1 https://github.com/Crissium/SilverDict
cd SilverDict/client
yarn install
yarn build
mv build ../server/
cd ..
uv venv --python 3.11
source .venv/bin/activate
uv pip install -r server/requirements.txt
python server/server.py 0.0.0.0
# pm2 start server.py --name silverdict --interpreter "<path_to>/SilverDict/.venv/Scripts/python.exe" --cwd "<path_to>/SilverDict/server" 
```

```sh
sudo vim /etc/systemd/system/silverdict.service
```

```
[Unit]
Description=SilverDict
After=syslog.target network.target

[Service]
WorkingDirectory=/home/<user>/<path_to>/SilverDict
ExecStart=/home/<user>/<path_to>/SilverDict/.venv/bin/python server/server.py 0.0.0.0
Restart=always
RestartSec=120

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl enable --now silverdict
```

## usage

```admonish
If you are not sure whether the dictionary file is formatted, specially for the `.mdx` format, you could choose to import it from tab `Dictionarys` for testing.
```

- SilverDict → More → Library
	- Sources
		1. Add → `<path_to>/<stardict_dir>`.
		2. Refresh.
		3. Go tab `Dictionarys`, check import results.
		4. More → Query → Search <word>, check results.
	- Dictionaries
		- Add
			```
			Name: ecdict
			Filename: <path_to_dicts>/stardict-ecdict-2.4.2/stardict-ecdict-2.4.2.ifo
			Type: StarDict (.ifo)
			```
			```
			Name: 汉语大词典(简体精排).mdx
			Filename: <path_to_dicts>/汉语大词典/汉语大词典(简体精排).mdx
			Type: MDict (.mdx)
			```
		2. Do nothing before importing finished.
	- Groups
		1. Add
			 ```
			 Group name: zh
			 Group language(s): zh
			 ```
		2. Group `zh` → Edit dictionaries → 汉语大词典 (On)
		3. Default Group → Edit dictionaries → 汉语大词典 (Off)
- (Optional) SilverDict → More → Settings → Create n-gram index.

## reference

- #document [Crissium/SilverDict Wiki](https://github.com/Crissium/SilverDict/wiki)
	- [server](https://github.com/Crissium/SilverDict/wiki/server#notes)
	- [general notes](https://github.com/Crissium/SilverDict/wiki/general-notes#enabling-additional-features)
- [[REQUEST] hub.docker.com? · Issue #20 · Crissium/SilverDict](https://github.com/Crissium/SilverDict/issues/20)

## cross-reference

- [calibre.md](/opt/calibre.md)

![silverdict](/_image/srv/silverdict.png)
