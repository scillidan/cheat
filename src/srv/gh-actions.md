# [GitHub Actions Runner](https://github.com/actions/runner)

## reference

- #blog [GitHub Actions Has a Package Manager, and It Might Be the Worst](https://nesbitt.io/2025/12/06/github-actions-package-manager.html)

## file

## extra

```yaml
			# _hugo-optimize.yml
      # https://github.com/b-m-f/hugo-picture-optimization
      - name: Install pkgs for hugo-picture-optimization
        run: sudo apt install -y libimage-exiftool-perl jpegoptim optipng imagemagick && sudo apt-get install coreutils
      - name: Make hugo_optimized.sh executeable
        run: sudo chmod +x ./hugo_optimized.sh
      - name: Run hugo_optimized.sh
        run: ./hugo_optimized.sh
```

```yaml
			# _scp.yml
      # https://github.com/appleboy/scp-action
      - name: Rename public to html
        run: mv public html
      - name: Checkout
        uses: actions/checkout@v3
      - name: copy file to server
        uses: appleboy/scp-action@v0.1.7
        with:
          host: ${{ secrets.VPS_HOST }}
          username: ${{ secrets.VPS_USERNAME }}
          key: ${{ secrets.VPS_KEY }}
          password: ${{ secrets.VPS_PASSWORD }}
          port: ${{ secrets.VPS_PORT }}
          source: "./html/*"
          target: "/var/www/sub-domains/<sub_domain>/"
          rm: true
          overwrite: true
          strip_components: 2
```

### cache

```yaml
			# _tencent-cloud-cdn.yml
      # https://www.ioiox.com/archives/69.html
      - name: Install coscmd
        run: sudo pip install coscmd
      - name: Configure coscmd
        env:
          SECRET_ID: ${{ secrets.SecretId }}
          SECRET_KEY: ${{ secrets.SecretKey }}
          BUCKET: <Bucket>
          REGION: <Region>
        run: coscmd config -a $SECRET_ID -s $SECRET_KEY -b $BUCKET -r $REGION
      - name: Upload
        run: coscmd upload -rfs --delete ./ / --ignore "./.git/*"
```

## asset

### mark

- [deploy-pages](https://github.com/actions/deploy-pages)
- [Gitleaks Action](https://github.com/gitleaks/gitleaks-action)

### extra

- #mkdocs [Publishing your site - MkDocs](https://squidfunk.github.io/mkdocs-material/publishing-your-site)
- #mkdocs [Publishing your site - Material for MkDocs](https://squidfunk.github.io/mkdocs-material/publishing-your-site/)
- [GitLab Sync - GitHub Action](https://github.com/kujov/gitlab-sync)
- [Torrent Webseed Creator](https://github.com/AnimMouse/torrent-webseed-creator)

### cache

- #hugo [actions-hugo](https://github.com/peaceiris/actions-hugo)
- #logseq [Logseq Publish SPA](https://github.com/marketplace/actions/logseq-publish-spa)
- #mdbook [MdBook Github Action with Plugin Support](https://github.com/benfalk/action-mdbook)
- #renpy [Ren'Py installer](https://github.com/Ayowel/renpy-setup-action)
- #renpy [Retype Build Action](https://github.com/retypeapp/action-build)
- [configure-pages](https://github.com/actions/configure-pages)
- [Generating PDF Documents with Quarto, LaTeX, and GitHub Actions](https://github.com/SimonWaldherr/BookTemplate)
- [Markdown autodocs](https://github.com/dineshsonachalam/markdown-autodocs)
- [Markdown to PDF](https://github.com/BaileyJM02/markdown-to-pdf)
- [Tencent Cloud COS and CDN action](https://github.com/sylingd/tencent-cos-and-cdn-action)
- [upload-artifact](https://github.com/actions/upload-artifact)
