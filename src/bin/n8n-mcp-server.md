# [n8n MCP Server](https://github.com/leonardsellem/n8n-mcp-server)

## install

```sh
git clone --depth=1 https://github.com/leonardsellem/n8n-mcp-server
cd n8n-mcp-server
npm install
npm run build
cp .env.example .env
subl .env
```

```
N8N_API_URL=http://localhost:5678/api/v1
N8N_API_KEY=<n8n_apikey>
DEBUG=false
N8N_WEBHOOK_USERNAME=<user>
N8N_WEBHOOK_PASSWORD=<password>
```

Get `<n8n_apikey>` from n8n:

1. n8n → Settings → n8n API → Create an API Key.
2. Label `n8n-mcp-server`, Expiration `No Expiration` → Save.

```sh
# Test
node build/index.js
```

## config

VSCodium → Extension → Cline → Manage MCP Servers → Settings → Configure MCP Servers.

```json
{
  "mcpServers": {
    "n8n-local": {
      "autoApprove": [],
      "disabled": false,
      "timeout": 60,
      "command": "node",
      "args": [
        "C:/Users/User/Usr/Script/n8n-mcp-server/build/index.js"
      ],
      "env": {
        "N8N_API_URL": "http://localhost:5678/api/v1",
        "N8N_API_KEY": "<your_n8n_apikey>",
        "N8N_WEBHOOK_USERNAME": "<username>",
        "N8N_WEBHOOK_PASSWORD": "<password>"
      },
      "transportType": "stdio"
    }
  }
}
```
