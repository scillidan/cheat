# [SilverDict](https://github.com/Crissium/SilverDict)

## install

### From source

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

### Docker compose

```sh
mkdir silverdict
cd silverdict
vim docker-compose.yml
```

```yaml
services:
  silverdict:
    image: mathdodger/silverdict:latest
    container_name: silverdict
    ports:
      - "2628:2628"
    volumes:
      - .silverdict:/root/.silverdict
      - /<path_to_dictionaries>:/dictionary
```

```sh
sudo docker compose up -d
```

## usage

- SilverDict → More → Library
	- Sources
		1. Add → `<path_to>/<stardict_dir>`.
		2. Refresh.
		3. Go tab `Dictionarys`, check import results.
		4. More → Query → Search `<word>`, check results.
	- Dictionaries
		- For example, add:
			```
			Name: HanYuDaCiDian
			Filename: <path_to>/<dict>.ifo
			Type: StarDict (.ifo)
			```
		2. Do nothing before importing finished.
	- Groups
		1. Add
			 ```
			 Group name: zh
			 Group language(s): zh
			 ```
		2. Group `zh` → Edit dictionaries → `<dict_name>` (On)
		3. Default Group → Edit dictionaries → `<dict_name>` (Off)

## Optional

- SilverDict → More → Settings
	- Create n-gram index

## reference

- #document [Crissium/SilverDict Wiki](https://github.com/Crissium/SilverDict/wiki)
	- [server](https://github.com/Crissium/SilverDict/wiki/server#notes)
	- [general notes](https://github.com/Crissium/SilverDict/wiki/general-notes#enabling-additional-features)
	- [Morphology analysis](https://github.com/Crissium/SilverDict/wiki/general-notes#morphology-analysis)
	- [Transliteration)](https://github.com/Crissium/SilverDict/wiki/general-notes#transliteration)
	- [Full text search](https://github.com/Crissium/SilverDict/wiki/general-notes#full-text-search)
- [[REQUEST] hub.docker.com? · Issue #20 · Crissium/SilverDict](https://github.com/Crissium/SilverDict/issues/20)

## cross-reference

- [calibre.md](/opt/calibre.md)

## appdedix

![silverdict](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/srv/silverdict.png)
