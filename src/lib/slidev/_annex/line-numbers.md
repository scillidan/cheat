# [Line Numbers](https://sli.dev/features/code-block-line-numbers.html)

````md
```ts {6,7}{lines:true,startLine:5}
function add(
  a: Ref<number> | number,
  b: Ref<number> | number
) {
  return computed(() => unref(a) + unref(b))
}
```
````

````md
```ts {*}{lines:true,startLine:5}
// ...
```
````
