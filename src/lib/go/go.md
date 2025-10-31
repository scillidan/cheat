# [Go](https://go.dev)

## install

```sh
# Arch
sudo pacman -S go
# Windows 10
scoop install go122
```

## config

[^1]

```sh
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
# go env -w GOPROXY=
```

## cross-reference

- [goenv.md](/lib/go/goenv.md)
- [gvm.md](/lib/go/gvm.md)

[^1]: [Goproxy.cn](https://goproxy.cn/)
