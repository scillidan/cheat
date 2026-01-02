# [Flood](https://github.com/jesec/flood)

## install

```sh
git clone --depth=1 https://github.com/jesec/flood
cd flood
npm install
npm run build
```

## usage

```sh
pm2 start npm --name "flood" -- run start
pm2 save
```

## optional

```sh
vim package.json
```

```json
  "script": {
    // Change port
    "start": "node --enable-source-maps --use_strict dist/index.js --host 0.0.0.0 --port 4321",
```

## config

Visit `http://<your_host>/:4321`, create account:

```
User: <flooduser>
Password: <flood_passwd>
Client: qBittorrent
URL: http://<your_host>:<port>
Username: <qBittorrent_user>
Password: <qBittorrent_passwd>
```

## troubleshoot

### Forget username or password

1. `rm -rf ~/.local/shared/flood/`.
2. Reload or re-create flood's PM2 serve.

## appdedix

![flood](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/srv/flood.png)
