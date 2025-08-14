# [TriliumNext Notes](https://github.com/TriliumNext/Notes)

## install

```sh
mkdir trilium-next
cd trilium-next
vim docker-compose.yml
# Copy from https://github.com/TriliumNext/Notes/blob/develop/docker-compose.yml
```

```yaml
# Modify the following
  environment:
    # - TRILIUM_DATA_DIR=/home/node/trilium-data
  	- NODE_TLS_REJECT_UNAUTHORIZED=0
  ports:
  	- '8070:8080'
  volumes:
  	- ~/.local/share/trilium-data:/home/node/trilium-data
```

```sh
sudo docker compose up -d
```

## Sync with server

[^1]

1. Install TriliumNext Notes Desktop.
2. TriliumNext Notes Desktop → Settings → Sync → Sync Configuration → Server instance address → `http://<your_host>:8070`.

[1^]: [Synchronization | Docs](https://triliumnext.github.io/Docs/Wiki/synchronization.html)
