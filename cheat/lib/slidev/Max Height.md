---
title: Max Height
url: https://sli.dev/features/code-block-max-height.html
tags:
  - Codeblock
  - Layout
---

````md
```ts {2|3|7|12}{maxHeight:'100px'}
function add(
  a: Ref<number> | number,
  b: Ref<number> | number
) {
  return computed(() => unref(a) + unref(b))
}
/// ...as many lines as you want
const c = add(1, 2)
```
````

````md
```ts {*}{maxHeight:'100px'}
// ...
```
````