# [cleveref](https://www.ctan.org/pkg/cleveref)

> The cleveref package enhances LATEX’s cross-referencing features, allowing the format of cross-references to be determined automatically ac-cording to the “type” of cross-reference (equation, section, etc.) and the context in which the cross-reference is used. The formatting for each cross-reference type can be fully customised in the preamble of your document. In addition, cleveref can typeset cross-references to lists of multiple la-bels, automatically formatting them according to their types, sorting them, and compressing sequences of numerically consecutive labels. Again, the multiple-reference formatting is fully customisable.  
> Normally, the latest version of the cleveref package is available via CTAN. Occasionally, slightly newer “pre-release” versions are available at www.dr-qubit.org/latex.php#cleveref a little before they make their way onto CTAN. [ctan.org/pkg/cleveref]

> cleveref包增强了LATEX的交叉引用功能，允许根据交叉引用的“类型”（方程、章节等）和交叉引用使用的上下文自动确定交叉引用的格式。每种交叉引用类型的格式可以在文档的前言中完全自定义。此外，cleveref可以排版多个标签的交叉引用，根据它们的类型自动格式化，排序，并压缩数值连续标签的序列。同样，多个引用的格式化也是完全可自定义的。  
> 通常，cleveref包的最新版本可以通过CTAN获得。偶尔，稍新一些的“预发布”版本会在www.dr-qubit.org/latex.php#cleveref上提供，稍早于它们上架CTAN。 [ctan.org/pkg/cleveref]

## quickstart

```tex
\documentclass{article}
\usepackage{amsmath}
\usepackage{cleveref}

\begin{document}

We will refer to equation \cref{eq1} to demonstrate our approach.

\begin{equation}
  \label{eq1}
  E = mc^2
\end{equation}

In \Cref{eq1}, we present a fundamental equation.

\end{document}
```
