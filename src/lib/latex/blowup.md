# [blowup](https://www.ctan.org/pkg/blowup)

> This package only defines the user-level macro \blowUp, which can be used to scale all pages of a document up or down. It is similar to the TeX primitive \mag, but more accurate and user-friendly. \blowUp can be useful for creating posters from a normal sized document and for many other types of fine-tuning of a finished document (e.g., minor scaling changes and position of the pages). [ctan.org/pkg/blowup]

> 该包仅定义了用户级宏`\blowUp`，可用于对文档的所有页面进行放大或缩小。它类似于TeX原始命令`\mag`，但更加准确和用户友好。`\blowUp`对于将正常大小的文档制作成海报，以及对已完成文档进行其他类型的微调（例如，微小的缩放变化和页面位置的调整）非常有用。 [ctan.org/pkg/blowup]

## usage

### example

```tex
\documentclass[letterpaper,twoside]{article}
\usepackage{xcolor}
\usepackage{blowup}
\AddToHook{shipout/background}{
    \put(0,0){\textcolor{green!30}{\rule[-\paperheight]{\paperwidth}{\paperheight}}}
}
\blowUp{target=a4,pos=c}

\begin{document}
Letter-size document on A4-size paper
\end{document}
```

## reference

- #file [blowup-ex1.tex](https://github.com/rolfn/blowup/blob/master/blowup-ex1.tex)
