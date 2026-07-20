### extra

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