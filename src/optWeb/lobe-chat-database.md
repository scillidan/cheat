# [Lobe Chat Server Database](https://lobehub.com/docs/self-hosting/server-database)

![](https://img.shields.io/github/license/lobehub/lobe-chat)

## install

[^1]

```sh
mkdir lobe-chat-database
cd lobe-chat-database
# sudo rm -rf data
# sudo rm -rf s3_data
bash <(curl -fsSL https://lobe.li/setup.sh) -l en
# You will see the information following and save them for using it later.
```

```
Security secret generation results are as follows:
LobeChat:
	- URL: http://localhost:3210
	- Username: user
	- Password: <password>
Casdoor:
	- URL: http://localhost:8000
	- Username: admin
	- Password: <password>

Minio:
	- URL: http://localhost:9000
	- Username: admin
	- Password: <password>
```

```sh
vim docker-compose.yml
# Copy from https://lobehub.com/docs/self-hosting/platform/docker-compose#run-docker-compose-deployment-command
```

```sh
# Replace string `localhost` to `<your_ip>` for using on local. `<local_domain>` seems not work here.
cp .env .env.bak
# sed -i -e 's/3210/3310/g' -e 's/9000/9100/g' -e 's/9001/9101/g' -e 's/8000/8100/g' .env
sed -i 's/localhost/<your_ip>/g' .env
```

## usage

```sh
sudo docker compose up -d
```

1. Visit `http://<your_ip>:8000`, login with `admin` and `<password>`.
2. Casdorr → Identity → Applications → LobeChat → Edit.
3. Redirect URLs → Add → `http://<your_ip>:3210/api/auth/callback/casdoor` → Save & Exit.

## reference

- [Deploying Server Database Version on Vercel](https://lobehub.com/docs/self-hosting/server-database/vercel)

[^1]: [Deploying LobeChat Server Database Version with Docker Compose](https://lobehub.com/docs/self-hosting/server-database/docker-compose)
