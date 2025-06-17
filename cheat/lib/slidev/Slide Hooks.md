---
title: Slide Hooks
url: https://sli.dev/features/slide-hook.html
tags:
  - Client-API
---

```ts
import { onSlideEnter, onSlideLeave, useIsSlideActive } from '@slidev/client'

const isActive = useIsSlideActive()

onSlideEnter(() => {
  /* Called whenever the slide becomes active */
})

onSlideLeave(() => {
  /* Called whenever the slide becomes inactive */
})
```