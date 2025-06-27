

## .rst to markdown

### pandoc

```sh
pandoc $1 -f rst -t markdown -o _.md
```

## formatting

### prettier

```sh
prettier --write --paser json $1
```

## generate

### cook

```sh
# create serialized folders
cook volume $1-$2 | sd volume "\55 chapter" > _temp_.md && mkdirs _temp_.md && trash _temp_.md
```

## grep (semantic)

### w2vgrep

```sh
w2vgrep /C 2 /n /t 0.55 /m "<path_to>/googlenews-slim/GoogleNews-vectors-negative300-SLIM.bin" $1 /f $2
```

## to llm prompt

### code2prompt

```sh
code2prompt . -o _.txt
```

### repomix

```sh
repomix --remote $1 -o _repomix_.txt
```