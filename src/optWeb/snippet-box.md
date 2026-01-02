# [Snippet Box](https://github.com/pawelmalak/snippet-box)

![](https://img.shields.io/github/license/pawelmalak/snippet-box) ![](https://img.shields.io/github/last-commit/scillidan/snippet-box/master?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/pawelmalak/snippet-box
cd snippet-box
cd client
nvm install 16.20.0
nvm use 16.20.0
npm install
cd ..
subl package.json
```

```json
  "dependencies": {
    "babel-jest": "^26.6.0",
    "babel-loader": "8.1.0",
    "eslint": "^7.11.0",
    "jest": "26.6.0",
    "webpack": "4.44.2",
    "webpack-dev-server": "3.11.1",
```

```sh
npm install
npm run build
```

## usage

```sh
cd snippet-box/build
node server.js
```

Visit `localhost:5000`.

## appdedix

![snippet-box](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/optWeb/snippet-box.png)
