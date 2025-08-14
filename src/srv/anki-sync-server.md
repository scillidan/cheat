# [Anki Sync Server](https://docs.ankiweb.net/sync-server.html)

## install

[^1]

```sh
# Ubuntu 22 ARM
uv venv .anki-sync-server
source .anki-sync-server/bin/activate
uv pip install anki
sudo vim /etc/systemd/system/anki-sync-server.service
```

```
[Unit]
Description=Anki Sync Server
After=network.target

[Service]
Environment="SYNC_USER1=<user>:<password>"
Environment="SYNC_USER1=SYNC_HOST=0.0.0.0"
Environment="SYNC_USER1=SYNC_PORT=8060"
WorkingDirectory=/path/to/.anki-sync-server
ExecStart=/path/to/.anki-sync-server/bin/python -m anki.syncserver
Restart=always

[Install]
WantedBy=multi-user.target
```

## usage

```sh
sudo systemctl enable --now anki-sync-server
```

## cross-reference

- [anki.md](/opt/anki.md)
- [ankidroid.md](/opt/_andriod/ankidroid.md)

[^1]: [Sync Server - Anki Manual](https://docs.ankiweb.net/sync-server.html#with-pip)
