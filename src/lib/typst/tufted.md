# [Tufted](https://github.com/vsheg/tufted)

## Usage

```sh
typst init @preview/tufted:0.1.1
cd tufted
make html
typst compile --root .. --features html --format html content/index.typ _site/index.html
```