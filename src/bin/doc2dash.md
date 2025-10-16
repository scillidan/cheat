# [doc2dash](https://github.com/hynek/doc2dash)

## install

```sh
# Pip
uv tool install doc2dash
```

## usage

```sh
# See <Document>.docset/Contents/Info.plist
doc2dash --name <identifier> -f ./build/html
mv <identifier>.docset <Document>.docset
# Put icon.png, icon@2x.png into <Document>.docset/
vim <DocumentName>.docset/Contents/Info.plist
```

```
<key>CFBundleName</key>
<string>Document (Version)</string>
```

## Push to [Kapeli/Dash-User-Contributions](https://github.com/Kapeli/Dash-User-Contributions)

[^1]

1. Fork https://github.com/Kapeli/Dash-User-Contributions
2. Fork Repo → Sync fork → Update branch

```sh
git clone https://github.com/<your>/Dash-User-Contributions
cd Dash-User-Contributions
# Sync to upstream
git pull
git checkout -b "<DocumentName>-<Version>"
tar --exclude='.DS_Store' -cvzf <DocumentName>.tgz <DocumentName>.docset
mv <DocumentName>.tgz Dash-User-Contributions/docsets/<DocumentName>/
vim Dash-User-Contributions/docsets/<DocumentName>/docset.json
```

```json
{
    "name": "Document Name",
    "version": "<Version>",
    "archive": "<DocumentName>.tgz"
}
```

```sh
# If you build a specific versions
mv <DocumentName-Version>.tgz Dash-User-Contributions/docsets/<DocumentName>/versions/<SpecificVersion>/
vim Dash-User-Contributions/docsets/<DocumentName>/docset.json
```

```sh
    "specific_versions": [
        {
            "version": "<SpecificVersion>",
            "archive": "versions/<SpecificVersion>/<DocumentName>.tgz"
        },
        ...
    ]
```

```sh
git add .
git commit -m "Update <DocumentName> to Version>"
git push -u origin <DocumentName>-<Versison>

Visit `https://github.com/<your>/Dash-User-Contributions` → Create Pull requests → Waiting check and merge.

## reference

- [Docset Contribution Checklist](https://github.com/Kapeli/Dash-User-Contributions/wiki/Docset-Contribution-Checklist#docset-requirements)

[^1]: [Contributions](https://github.com/MarcDiethelm/contributing)
