# [Calibre-Web](https://github.com/janeczku/calibre-web)

## install

```sh
# Ubuntu 22 ARM
uv venv calibre-web-venv
source calibre-web-venv/bin/activate
uv pip install calibreweb
```

Install optional features, for example:

```sh
vim calibre-web-venv/requirements.txt
```

```
# metadata extraction
rarfile>=3.2,<5.0
scholarly>=1.2.0,<1.8
markdown2>=2.0.0,<2.5.0
html2text>=2020.1.16,<2024.2.26
python-dateutil>=2.1,<2.10.0
beautifulsoup4>=4.0.1,<4.13.0
faust-cchardet>=2.1.18,<2.1.20
py7zr>=0.15.0,<0.21.0
mutagen>=1.40.0,<1.50.0
pycountry>=20.0.0,<25.0.0
```

```sh
cps
```

```sh
sudo vim /lib/systemd/system/calibre-web.service
```

```
[Unit]
Description=Calibre-Web
After=network.target

[Service]
ExecStart=/home/scillidan/calibre-web-venv/bin/cps
WorkingDirectory=/home/scillidan/calibre-web-venv
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
```

## usage

```sh
sudo systemctl enable --now calibre-web
```

1. Visit `http://<your_host>:8083`.
2. Login with `admin`, `admin123`.
3. Calibre → Add books → There's `Calibre Library\` here now.
4. Calibre-Web → Admin → Edit Cabibre Database Configuration → Select folder contains the `metadata.db`.

## reference

- [linuxserver/calibre-web](https://docs.linuxserver.io/images/docker-calibre-web)

## resource

- [Calibre-Web Automated](https://github.com/crocodilestick/Calibre-Web-Automated)
- [Calibre-Web-Automated-Book-Downloader](https://github.com/calibrain/calibre-web-automated-book-downloader)

## appdedix

![calibre-web](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/srv/calibre-web.png)
