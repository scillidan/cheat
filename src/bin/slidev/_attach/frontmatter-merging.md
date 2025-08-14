---
tags:
  - Syntax
---

# [Frontmatter Merging](https://sli.dev/features/frontmatter-merging.html)

```md
# ./slides.md

---
src: ./cover.md
background: https://sli.dev/bar.png // [!code highlight]
class: text-center
---
```

```md
# ./cover.md

---
layout: cover
background: https://sli.dev/foo.png // [!code highlight]
---

# Cover

Cover Page
```

Will be:

```md
---
layout: cover
background: https://sli.dev/bar.png // [!code highlight]
class: text-center
---

# Cover

Cover Page
```
