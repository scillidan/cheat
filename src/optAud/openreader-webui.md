# [OpenReader-WebUI](https://github.com/richardr1126/OpenReader-WebUI)

## install

```sh
git clone --depth=1 https://github.com/richardr1126/OpenReader-WebUI
cd OpenReader-WebUI
pnpm i
cp template.env .env
```

```
# Kokoro-FastAPI
API_BASE=http://localhost:8880/v1/
```

```sh
# Development mode
pnpm dev
```

```sh
# Production mode
pnpm build
pnpm start
```

## annex

- [start_openreader-webui.sh](https://github.com/scillidan/Shell/blob/main/opt/start_openreader-webui.sh)
