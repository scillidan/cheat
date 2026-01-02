# [Datasette](https://datasette.io)

> Datasette is a tool for exploring and publishing data. It helps people take data of any shape, analyze and explore it, and publish it as an interactive website and accompanying API.  
> Datasette is aimed at data journalists, museum curators, archivists, local governments, scientists, researchers and anyone else who has data that they wish to share with the world. It is part of a wider ecosystem of 44 tools and 154 plugins dedicated to making working with structured data as productive as possible. [datasette.io]

> Datasette是一个用于探索和发布数据的工具。它帮助人们处理任何形状的数据，进行分析和探索，并将其发布为互动网站及配套的API。  
> Datasette旨在服务于数据记者、博物馆策展人、档案管理员、地方政府、科学家、研究人员以及希望与全球分享数据的其他人。它是一个更广泛的生态系统的一部分，包括44个工具和154个插件，致力于使处理结构化数据的工作尽可能高效。 [datasette.io]

## Data processing

[^2]

```sh
pipx install sqlite-utils
sqlite-utils insert database.db table table.csv --csv
sqlite-utils drop-table database.db table
sqlite-utils enable-fts database.db table column_1 column_2
# sqlite-utils insert-files resource.db latex media/*.jpg
```

## Selfhost

[^1]

```sh
mkdir <dir>
cd <dir>
uv venv
.venv\Scripts\activate.bat
uv pip install datasette
uv pip install datasette-sitemap datasette-block-robots datasette-backup datasette-search-all datasette-external-links-new-tabs datasette-copyable datasette-publish-vercel
# datasette install datasette-render-images datasette-multiline-links datasette-render-markdown datasette-media
# datasette install git+https://github.com/next-LI/datasette-csv-importer.git
# uv pip install datasette-parquet 
datasette serve database.db
datasette serve database_1.db database_2.db -m metadata.yml
```

## Deploy to Vercel

[^3]

Create `.github/workflows/vercel.yml`

```yaml
name: Deploy to Vercel
on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '18.x'
      - name: Install Vercel CLI
        run: npm i -g vercel
      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.9'
      - name: Install dependencies
        run: pip install datasette datasette-sitemap datasette-block-robots datasette-backup datasette-search-all datasette-ripgrep datasette-render-images datasette-media datasette-render-markdown datasette-multiline-links datasette-external-links-new-tabs datasette-copyable datasette-publish-vercel
      - name: Deploy Datasette using Vercel
        env:
          VERCEL_TOKEN: ${{ secrets.VERCEL_TOKEN }}
        run: |-
          datasette publish vercel database_1.db database_2.db \
            --metadata metadata.yml \
            --token $VERCEL_TOKEN \
            --project database
```

Vercel → Project `database` → Settings → Build and Deployment → Node.js Version → 18.x.

## reference

- [Configuring FTS using sqlite-utils](https://docs.datasette.io/en/stable/full_text_search.html#configuring-fts-using-sqlite-utils)

## resource

### mark

- [datasette-backup](https://github.com/simonw/datasette-backup)
- [datasette-block-robots](https://github.com/simonw/datasette-block-robots)
- [datasette-copyable](https://github.com/simonw/datasette-copyable)
- [datasette-csv-importer](https://github.com/next-LI/datasette-csv-importe)
- [datasette-external-links-new-tabs](https://github.com/ocdtrekkie/datasette-external-links-new-tabs)
- [datasette-publish-vercel](https://github.com/simonw/datasette-publish-vercel)
- [datasette-search-all](https://github.com/simonw/datasette-search-all)
- [datasette-sitemap](https://github.com/simonw/datasette-sitemap)

### extra

- [datasette-media](https://github.com/simonw/datasette-media)
- [datasette-multiline-links](https://github.com/simonw/datasette-multiline-links)
- [datasette-render-images](https://github.com/simonw/datasette-render-images)
- [datasette-render-markdown](https://github.com/simonw/datasette-render-markdown)

### cache

- [csvs-to-sqlite](https://github.com/simonw/csvs-to-sqlite)
- [data-tourism](https://github.com/LNshuti/data-tourism)
- [datapackage-to-datasette](https://github.com/chris48s/datapackage-to-datasette)
- [Datasette charcoal theme](https://github.com/julien040/charcoal-datasette-theme)
- [Datasette Studio](https://github.com/datasette/studio)
- [datasette-atom](https://github.com/simonw/datasette-atom)
- [datasette-auth-github](https://github.com/simonw/datasette-auth-github)
- [datasette-configure-fts](https://github.com/simonw/datasette-configure-fts)
- [datasette-css-properties](https://github.com/simonw/datasette-css-properties)
- [datasette-dashboards](https://github.com/rclement/datasette-dashboards)
- [datasette-edit-schema](https://github.com/simonw/datasette-edit-schema)
- [datasette-edit-templates](https://github.com/simonw/datasette-edit-templates)
- [datasette-export](https://github.com/simonw/datasette-export)
- [datasette-gzip](https://github.com/simonw/datasette-gzip)
- [datasette-insert](https://github.com/simonw/datasette-insert)
- [datasette-jq](https://github.com/simonw/datasette-jq)
- [datasette-linkify](https://github.com/ernstki/datasette-linkify)
- [datasette-mailto-links](https://github.com/chris48s/datasette-mailto-links)
- [datasette-mask-columns](https://github.com/simonw/datasette-mask-columns)
- [datasette-metadata-editable](https://github.com/datasette/datasette-metadata-editable)
- [datasette-mp3-audio](https://github.com/simonw/datasette-mp3-audio)
- [datasette-mutable-downloads](https://github.com/cldellow/datasette-mutable-downloads)
- [datasette-nteract-data-explorer](https://github.com/hydrosquall/datasette-nteract-data-explorer)
- [datasette-parquet](https://github.com/cldellow/datasette-parquet)
- [datasette-permissions-sql](https://github.com/simonw/datasette-permissions-sql)
- [datasette-pins](https://github.com/datasette/datasette-pins)
- [datasette-pretty-json](https://github.com/simonw/datasette-pretty-json)
- [datasette-public](https://github.com/simonw/datasette-public)
- [datasette-render-html](https://github.com/simonw/datasette-render-html)
- [datasette-render-image-tags](https://github.com/simonw/datasette-render-image-tags)
- [datasette-render-timestamps](https://github.com/simonw/datasette-render-timestamps)
- [datasette-ripgrep](https://github.com/simonw/datasette-ripgrep)
- [datasette-saved-queries](https://github.com/simonw/datasette-saved-queries)
- [datasette-scraper](https://github.com/cldellow/datasette-scrape)
- [datasette-screenshots](https://github.com/simonw/datasette-screenshots)
- [datasette-seaborn](https://github.com/simonw/datasette-seaborn)
- [datasette-spotify-embed](https://github.com/chekos/datasette-spotify-embed)
- [datasette-studio](https://github.com/datasette/datasette-studio)
- [datasette-table](https://github.com/simonw/datasette-table)
- [datasette-tiddlywiki](https://github.com/simonw/datasette-tiddlywiki)
- [datasette-total-page-time](https://github.com/simonw/datasette-total-page-time)
- [datasette-upload-csvs](https://github.com/simonw/datasette-upload-csvs)
- [datasette-upload-dbs](https://github.com/simonw/datasette-upload-dbs)
- [datasette-webhook-write](https://github.com/mfa/datasette-webhook-write)
- [datasette-write-ui](https://github.com/datasette/datasette-write-ui)
- [github-to-sqlite](https://github.com/dogsheep/github-to-sqlite)
- [pelican-to-sqlite](https://github.com/ryancheley/pelican-to-sqlite)

[^1]: [Metadata](https://docs.datasette.io/en/stable/metadata.html)
[^2]: [sqlite-utils](https://github.com/simonw/sqlite-utils)
[^3]: [datasette-publish-vercel](https://github.com/simonw/datasette-publish-vercel)
