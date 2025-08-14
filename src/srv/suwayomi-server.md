# [Suwayomi-Server](https://github.com/Suwayomi/Suwayomi-Server)

## install

### Ubuntu 22 ARM

[^1]

Get `Suwayomi-Server-v*-debian-all.deb` from [Suwayomi-Server - Releases](https://github.com/Suwayomi/Suwayomi-Server/releases).

```sh
sudo dpkg -i Suwayomi-Server-v*-debian-all.deb
sudo apt --fix-broken install
sudo vim /etc/systemd/system/suwayomi-server.service
```

```
[Unit]
Description=Suwayomi Server
After=network.target

[Service]
ExecStart=suwayomi-server
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl enable --now suwayomi-server
sudo systemctl status suwayomi-server
```

### Arch

```sh
sudo pacman -S xorg-xhost
sudo useradd -m suwayomi
sudo passwd suwayomi
sudo usermod -aG mountusers suwayomi
su suwayomi
```

1. Get release from [Suwayomi-Server-preview](https://github.com/Suwayomi/Suwayomi-Server-preview).
2. Extract to `Suwayomi-Server/`.

```sh
su <root_user>
sudo vim /etc/systemd/system/suwayomi.service
```

```
[Unit]
Description=Suwayomi Server
After=network.target

[Service]
User=suwayomi
Group=suwayomi
Environment=DISPLAY=:0
ExecStart=/usr/bin/java -jar <path_to>/Suwayomi-Server/bin/Suwayomi-Server.jar
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl daemon-reload
sudo systemctl enable --now suwayomi
sudo firewall-cmd --zone=home --add-port=4567/tcp --permanent
sudo firewall-cmd --reload
```

## usage

1. The service may take several minutes to start until you can see it.
2. Visit `http://<your_host>:4567`.
3. Settings
	- Brower
		- Extension repositories → Add repository → `https://raw.githubusercontent.com/ThePBone/tachiyomi-extensions-revived/repo/index.min.json` → OK[^2].
		- Local source location → `/mnt/<disk>/manga`.
	- Download → Download localtion → `/mnt/<disk>/share/suwayomi`.
	- Library → Automatically refresh metadata (On).
4. Brower
	1. Extensions → Filter → `<your_lang>` → Select `<plugin>` → Install.
	2. Sources → Filter → `<your_lang>` (On).
5. (Optional) Backup → Restore Backup.

[^1]: [can you make it easier to install on ubuntu , and tutorial need to update](https://github.com/Suwayomi/Suwayomi-Server/issues/896)
[^2]: [Tachiyomi Extensions Revived](https://github.com/timschneeb/tachiyomi-extensions-revived)
