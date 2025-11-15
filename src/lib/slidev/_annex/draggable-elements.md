---
tags:
  - Layout
---

# [Draggable Elements](https://sli.dev/features/draggable.html)

```md
# Directive - Data from the frontmatter

---
dragPos:
  square: Left,Top,Width,Height,Rotate
---

<img v-drag="'square'" src="https://sli.dev/logo.png">
```

```md
# Directive - Data from the directive value

<img v-drag="[Left,Top,Width,Height,Rotate]" src="https://sli.dev/logo.png">
```

```md
# Component - Data from the frontmatter

---
dragPos:
  foo: Left,Top,Width,Height,Rotate
---

<v-drag pos="foo" text-3xl>
  <div class="i-carbon:arrow-up" />
  Use the `v-drag` component to have a draggable container!
</v-drag>
```

```md
# Component - Data from props

<v-drag pos="Left,Top,Width,Height,Rotate" text-3xl>
  <div class="i-carbon:arrow-up" />
  Use the `v-drag` component to have a draggable container!
</v-drag>
```

```md
# Draggable Arrow

<v-drag-arrow />
```
