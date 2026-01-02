# [Open WebUI](https://github.com/open-webui/open-webui)

![](https://img.shields.io/github/license/open-webui/open-webui)

## install

```sh
# Pip
uv tool install open-webui --python 3.11
# uv tool install hf_transfer
```

```sh
# Docker compose
mkdir open-webui
cd open-webui
vim docker-compose.yml
```

```yaml
services:
	open-webui:
		image: ghcr.io/open-webui/open-webui:main
		container_name: open-webui
		ports:
			# Change port
			- "8050:8080"
		environment:
			OLLAMA_BASE_URL: http://<your_host>:11434
		volumes:
			- .data:/app/backend/data
		restart: always
```

## usage

```sh
# Pip
open-webui serve
```

```sh
# Docker compose
sudo docker compose up -d
```

Visit `http://<your_host>:<port>`, you may need to wait a few minutes for it to complete initialization.

## config

- Open WebUI → User → Admin Panel → Settings → Documents
	- Embedding Model Engine → `Ollama`
	- Embedding Model → `nomic-embed-text:latest`

## reference

- [Tutorial: Configuring RAG with Open WebUI Documentation](https://docs.openwebui.com/tutorials/tips/rag-tutorial/)
- [Add Open WebUI as a Custom Search Engine](https://docs.openwebui.com/tutorials/integrations/browser-search-engine/#step-2-add-open-webui-as-a-custom-search-engine)

## file

```json
// _path_librarian.json
// The modified lines, for example.
[
    {
        "base_model_id": "qwen3:14b",
        "params":
        {
            "system": "...And you always answer in Simplified Chinese."
        },
    }
]
```

## [asset]((https://openwebui.com))

### mark

- #function [Add to Memories Action Button](https://openwebui.com/f/pad4651/add_to_memories_action_button)
- #function [Time Token Tracker](https://openwebui.com/f/owndev/time_token_tracker)
- #model [Librarian](https://openwebui.com/m/javi/librarian:latest)
- #model [The Good Doctor](https://openwebui.com/m/nicluckie/the-good-doctor:latest)

### later

- #model [Document Search](https://openwebui.com/m/daradib/documentsearch)

### cache

- #function [N8N Pipe](https://openwebui.com/f/coleam/n8n_pipe)
- #function [N8N Pipeline](https://openwebui.com/f/owndev/n8n_pipeline)
- #model [codewriter](https://openwebui.com/m/vianch/codewriter:latest)
- #model [Sigmund Freud](https://openwebui.com/m/geometric/sigmund-freud)
- #prompt [Code Expert](https://openwebui.com/p/masterdee/code-expert)
- #prompt [Code Optimization](https://openwebui.com/p/hub/code-optimization)
- #tool [WebUI Auto Translator](https://openwebui.com/t/nnaoycurt/webui_auto_translator)

## appdedix

![open-webui_01](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/open-webui_01.png)
![open-webui_02](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/open-webui_02.png)
