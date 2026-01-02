---
tags:
  - Codeblock
  - Animation
---

# [Line Highlighting](https://sli.dev/features/line-highlighting.html)

````md
```ts {none|2-3|5|all|hide}
function add(
  a: Ref<number> | number,
  b: Ref<number> | number
) {
  return computed(() => unref(a) + unref(b))
}
```
````