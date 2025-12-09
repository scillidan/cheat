# [NPM](https://www.npmjs.com/)

## usage

### Publish npm package

```sh
npm login
```

```
# Publish
npm init
npm publish
# npm version patch
```

```sh
# Deprecate
npm deprecate <pkg> "Deprecate `<pkg>`"
```

### Other

```sh
npm config set proxy http://127.0.0.1:<port>
npm config set https-proxy http://127.0.0.1:<port>
npm config get proxy
npm config get https-proxy
```

```sh
npm config delete proxy
npm config delete https-proxy
npm config get proxy
npm config get https-proxy
```
