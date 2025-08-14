---
tags:
  - Navigation
  - Styling
---

# [Navigation Direction Variants](https://sli.dev/features/direction-variant.html)

```css
/* example: delay on only forward but not backward */
.slidev-nav-go-forward .slidev-vclick-target {
  transition-delay: 500ms;
}
.slidev-nav-go-backward .slidev-vclick-target {
  transition-delay: 0;
}
```

```html
<div v-click class="transition forward:delay-300">Element</div>
```