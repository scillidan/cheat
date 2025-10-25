---
tags:
  - Syntax
---

# [Importing Slides](https://sli.dev/features/importing-slides.html)

```md 
# ./slides.md

# Title

This is a normal page

---
src: ./pages/toc.md // [!code highlight]
---

<!-- this page will be loaded from './pages/toc.md' -->

Contents here are ignored

---

# Page 4

Another normal page

---
src: ./pages/toc.md   # Reuse the same file // [!code highlight]
---
```

```md
# ./pages/toc.md

# Table of Contents

Part 1

---

# Table of Contents

Part 2
````

Import file:

```md
---
src: ./another-presentation.md#2,5-7
---
```
