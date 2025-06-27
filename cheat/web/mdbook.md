```toml
[output.epub]
# additional-css = ["./path/to/main.css"]
# use-default-css = false
# cover-image = "ebook-cover.png"
# additional-resources = ["./assets/Open-Sans-Regular.ttf"]
no-section-label = true
curly-quotes = true
epub-version = 3
footnote-backrefs = true
```

```toml
[output.html]
git-branch = "main"
open-on-text = "[Edit this page.]"
additional-css = ["asset/open-on-gh.css"]

[preprocessor.open-on-gh]
command = "mdbook-open-on-gh"
renderer = ["html"]
```

```toml
[preprocessor.toc]
command = "mdbook-toc"
renderer = ["html"]
max-level = 4
```