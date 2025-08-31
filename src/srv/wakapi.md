# [wakapi](https://github.com/muety/wakapi)

## install

### Docker compose

```sh
mkdir wakapi
vim docker-compose.yml
```

```yaml
services:
	wakapi:
		image: n1try/wakapi
		container_name: wakapi
		ports:
			- "3000:3000"
		volumes:
			- wakapi-data:/data
		environment:
			WAKAPI_PASSWORD_SALT: "${WAKAPI_PASSWORD_SALT}"

volumes:
	wakapi-data:
```

```sh
vim .env
```

```sh
WAKAPI_PASSWORD_SALT=<change_it>
```

```sh
sudo docker compose --env-file .env up -d
```

### From source

```sh
# Ubuntu 22 Arm
git clone --depth=1 https://github.com/muety/wakapi
cd wakapi
vim docker-compose.yml
# Base on https://github.com/muety/wakapi/blob/master/compose.yml
```

```yaml
	db:
		volumes:
			# Save data on mount disk
			- /mnt/<mount_name>/local/share/wakapi-db-data:/var/lib/postgresql/data
```

```sh
sudo mkdir -p /mnt/<mount_name>/local/share/wakapi-db-data
vim .env
```

```
WAKAPI_PASSWORD_SALT=<change_it>
WAKAPI_DB_PASSWORD=<change_it>
WAKAPI_MAIL_SMTP_PASS=<change_it>
```

```sh
sudo docker compose up -d
```
