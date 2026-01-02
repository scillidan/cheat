# [Lute v3](http://github.com/LuteOrg/lute-v3)

## install

### Docker compose

[^1]

```sh
mkdie lute
cd lute
vim docker-compose.yml
# Copy from https://luteorg.github.io/lute-manual/install/windows/windows-using-docker.html#3-create-docker-composeyml
```

```sh
sudo docker compose up -d
```

## config

- Lute → Settings
	- Languages → English → Dictionaries → Add
		- SilverDict
			```
			Terms
			Embedded
			http://<your_host>:2628/api/query/<en_group>/[LUTE]
			(Enable)
			```
		- LibreTranslate
			```
			Sentences
			Pop-up window
			http://<your_host>:5000/?source=en&target=zh-Hans&q=[LUTE]
			(Enable)
			```

## usage

- Lute → Books
	- Import web page
		1. Import URL → `https://www.gutenberg.org/cache/epub/11/pg11-images.html`
		2. Language → English
		3. Save

## reference

- #document [Lute manual](https://luteorg.github.io/lute-manual/install/install.html)

[^1]: [Windows using Docker - Lute manual](https://luteorg.github.io/lute-manual/install/windows/windows-using-docker.html)
