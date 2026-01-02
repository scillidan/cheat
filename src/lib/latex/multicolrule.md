# [multicolrule](https://www.ctan.org/pkg/multicolrule)

> This package lets you customize the appearance of the vertical rule that appears between columns of multicolumn text. It is primarily intended to work with the multicol package, hence its name, but also supports the twocolumn option and \twocolumn macro provided by the standard classes (and related classes such as the KOMA-Script equivalents).  
> The package depends on expl3 and xparse. [ctan.org/pkg/multicolrule]

> 该包允许您自定义在多列文本之间出现的垂直规则的外观。它主要旨在与multicol包配合使用，因此得名，但也支持标准类提供的twocolumn选项和\twocolumn宏（以及KOMA-Script等相关类的等效项）。  
> 该包依赖于expl3和xparse。 [ctan.org/pkg/multicolrule]

## usage

### example

```tex
\documentclass{article}
\usepackage{lipsum}
\usepackage[tikz]{multicolrule}[2019/10/01]

\begin{document}
\begin{multicols}{2}[Default]
\lipsum[1-2]
\end{multicols}
\end{document}
```
