# [DevDocs](https://github.com/freeCodeCamp/devdocs)

## install

```sh
git clone --depth=1 https://github.com/freeCodeCamp/devdocs
cd devdocs
cp Gemfile Gemfile.bak
vim Gemfile
```

```
ruby '3.4.1'
```

```sh
rbenv install 3.4.1
gem install bundler
bundle install
```

### Arch

```sh
# Docs
bundle exec thor docs:download --all
bundle exec thor docs:download --installed
# Docs be saved into public\docs.
```

```sh
# Sever
bundle exec rackup
```

### Windows 10

```sh
scoop install curl gzip
cd <path_to>\Scoop\shims
cp gzip.exe gunzip.exe
cp gzip.shim gunzip.shim
```

## Deploy with Docker compose

[^3]

```sh
mkdir devdocs
cd devdocs
vim docker-compose.yml
```

```yaml
services:
  devdocs:
    image: ghcr.io/freecodecamp/devdocs:latest
    container_name: devdocs
    ports:
      - "9292:9292"
    restart: always
```

```sh
sudo docker compose up -d
```

[^1]: [Any pod command fails for lack of libcurl.dll on a Windows machine.](https://github.com/CocoaPods/CocoaPods/issues/9955)
[^2]: [Not installable on Windows](https://github.com/freeCodeCamp/devdocs/issues/1152)
[^3]: [Using Docker (Recommended)](https://github.com/freeCodeCamp/devdocs#using-docker-recommended)
