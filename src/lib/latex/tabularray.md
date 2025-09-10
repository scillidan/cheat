# [tabularray](https://www.ctan.org/pkg/tabularray)

> LaTeX tables are implemented using TeX commands such as \halign, \noalign, \span, and \omit. In order to implement new features, many macro packages have modified the inner table commands inside LaTeX. This makes package code complicated, difficult to maintain, and often conflicts with each other.  
> At present, the LaTeX3 programming layer is basically mature. This tabularray package will discard the old \halign commands and directly use LaTeX3 functions to parse the table, and then typeset the entire table. Under the premise of being compatible with the basic syntax of LaTeX2 tables, this macro package will completely separate the contents and styles of the table, and the styles of the table can be completely set in key-value way. [ctan.org/pkg/tabularray]

> LaTeX表格是通过TeX命令如\halign、\noalign、\span和\omit来实现的。为了实现新特性，许多宏包修改了LaTeX内部的表格命令。这使得宏包的代码变得复杂，难以维护，并且经常相互冲突。  
> 目前，LaTeX3编程层基本上已经成熟。这个tabularray包将抛弃旧的\halign命令，直接使用LaTeX3函数来解析表格，然后排版整个表格。在与LaTeX2表格基本语法兼容的前提下，这个宏包将完全分离表格的内容和样式，表格的样式可以完全通过键值方式设置。 [ctan.org/pkg/tabularray]

## quickstart

```tex
\documentclass{article}
\usepackage{tabularray}

\begin{document}
\begin{tblr}{lccr}
  \hline
  Alpha & Beta & Gamma & Delta \\
  \hline
  Epsilon & Zeta & Eta & Theta \\
  \hline
  Iota & Kappa & Lambda & Mu \\
  \hline
\end{tblr}
\end{document}
```
