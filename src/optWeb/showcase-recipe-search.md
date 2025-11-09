# [Instant Recipe Search](https://github.com/typesense/showcase-recipe-search)

## install

```sh
git clone --depth=1 https://github.com/typesense/showcase-recipe-search
cd showcase-recipe-search
```

### Windows 10

```sh
rbenv install 2.7.2
rbenv shell 2.7.2
gem install bundler -v 2.4.22
bundle install
corepack enable
mv yarn.lock yarn.lock.bk
yarn
```

```sh
git clone --depth=1 https://github.com/typesense/typesense
cd typesense
mkdir build
cd build
cmake ..
make
mkdir -p ~/typesense-server-data
./bin/typesense-server --data-dir ~/typesense-server-data --api-key=xyz --listen-port 8108 --enable-cors
```

```sh
# Require docker
cp .env.development .env
set BATCH_SIZE=1000
yarn run indexer:transformDataset
yarn run indexer:importToTypesense
yarn start
```

## troubleshoot

- [Build Failing - Arch Linux · Issue #930 · rbenv/ruby-build](https://github.com/rbenv/ruby-build/issues/930)
