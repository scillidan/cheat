# [Guitar Tab Editor](https://github.com/calesce/tab-editor)

![](https://img.shields.io/github/license/calesce/tab-editor) ![](https://img.shields.io/github/last-commit/scillidan/tab-editor/master?label=last%20commit%20(fork))

## install

```sh
git clone --depth=1 https://github.com/calesce/tab-editor
cd tab-editor
npm install
```

## usage

```sh
npm start
```

## optional

```sh
# Change port
subl server.js
```

```js
app.listen(4321, 'localhost', function(err) {
  if (err) {
    return console.log(err);
  }

  console.log('Listening at http://localhost:4321');
});
```

![tab-editor](/_image/optWeb/tab-editor.png)
