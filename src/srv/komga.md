# [Komga](https://github.com/gotson/komga)

## install

### Ubuntu 22 ARM

#### Docker

```sh
mkdir komga
cd komga
vim docker-compose.yml
```

```yaml
# Copy from https://komga.org/docs/installation/docker#docker-compose
services:
	komga:
		image: gotson/komga:latest
		container_name: komga
		ports:
			- 25600:25600
		volumes:
			- ./config/:/config
			# Add manga dir on mount disk
			- /mnt/<mount_name>/<path_to_manga>:/manga
		restart: unless-stopped
```

```sh
# rm -rf .config
sudo docker compose up -d
```

1. Visit `http://<your_host>:25600`.
2. Register and login.
3. Komga → Add/edit Library → Root folder → `/manga`.

#### Jar

[^1] [^2] [^3]

```sh
sudo apt install openjdk-21-jdk postgresql postgresql-contrib -y
sudo su postgres
createuser komgauser --pwprompt
createdb -O komgauser komga
exit
```

```sh
sudo mkdir /opt/komga
sudo wget https://github.com/gotson/komga/releases/download/<the_version>/komga-<the_version>.jar -P /opt/komga/
sudo vim /etc/systemd/system/komga.service
```

```
[Unit]
Description=Komga Service
After=network.target

[Service]
ExecStart=/usr/bin/java -Xms128M -Xmx256M -jar /opt/komga/komga-<the_version>.jar --server.servlet.context-path=/komga --server.port=8090
WorkingDirectory=/opt/komga
Restart=on-abnormal

[Install]
WantedBy=multi-user.target
```

```sh
sudo systemctl daemon-reload
sudo systemctl enable --now komga
```

### Arch

```sh
sudo useradd -m komga
sudo passwd komga
sudo usermod -aG mountusers komga
sudo vim /etc/systemd/system/komga.service
```

```
[Unit]
Description=komga service
After=network-network.target

[Service]
User=komga
ExecStart=/usr/bin/komga
Type=exec
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

```sh
sudo firewall-cmd --zone=home --add-port=25600/tcp --permanent
sudo firewall-cmd --reload
sudo systemctl daemon-reload
sudo systemctl enable --now komga.service
```

### Windows 10

```sh
java -jar "komga.jar" --komga.config-dir="config"
```

## cross-reference

- [komga-cover-extractor.md](/bin/komga-cover-extractor.md)
- [mount.md](/bin/_arch/mount.md)
- [to-cbz.md](/bin/to_cbz.md)

## reference

- [Configuration options - Komga](https://komga.org/docs/installation/configuration)

[^1]: [Run with Docker | Komga](https://komga.org/docs/installation/docker)
[^2]: [How to Install Komga on Ubuntu Server Latest](https://ipv6.rs/tutorial/Ubuntu_Server_Latest/Komga/)
[^3]: [Komga - Breaking changes](https://komga.org/blog/prepare-v1/#breaking-changes)
[^4]: [Configuration options](https://komga.org/docs/installation/configuration)
