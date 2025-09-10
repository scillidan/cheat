# [draftwatermark](https://www.ctan.org/pkg/draftwatermark)

> The draftwatermark package extends LATEX providing a means to add a watermark (typically textual and light gray, but possibly more sophisticated) on the pages of a document (either on every page, on the first page, or on selected pages). Typical usage may consist in writing words such as "DRAFT" or "CONFIDENTIAL" across the pages. The package may remind in some sense draftcopy by Dr. Juergen Vollmer, but its implementation is lighter (as the reduced code footprint shows) and does not rely on postscript specials, making the package fully compatible with pdfLATEX, XƎLATEX and LuaLATEX. Its feature set is somehow restricted because the emphasis is on the simplicity of the interface. For complex layouts, consider scrlayer.sty from the KOMA script bundle or directly using the new LATEX shipout hooks. [ctan.org/pkg/draftwatermark]

> draftwatermark包扩展了LATEX，提供了一种在文档页面上添加水印的方法（通常是文本形式，且为浅灰色，但也可能更加复杂），可以在每一页、首页或选定页面上使用。典型用法是在页面上写入诸如“DRAFT”或“CONFIDENTIAL”的字样。该软件包在某种意义上可以与Dr. Juergen Vollmer的draftcopy相提并论，但其实现更为轻便（如减少的代码占用所示），且不依赖于postscript特性，使得该软件包与pdfLATEX、XƎLATEX和LuaLATEX完全兼容。其功能集在某种程度上受到限制，因为重点是界面的简洁性。对于复杂的布局，请考虑使用KOMA脚本包中的scrlayer.sty或直接使用新的LATEX shipout钩子。 [ctan.org/pkg/draftwatermark]

## quickstart

```tex
\documentclass{article}
\usepackage[svgnames]{xcolor}
\usepackage[firstpageonly, color={[gray]{0.9}},
text=DRAFT\\COPY]{draftwatermark}
\usepackage{mathptmx}
\usepackage{lipsum}

\title{Sample document for the draftwatermark package}
\author{}

\begin{document}
\maketitle
\section{One}
\lipsum[1-3]
\end{document}
```
