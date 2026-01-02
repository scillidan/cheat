# [soul](https://www.ctan.org/pkg/soul)

> This version is a merge of the original package soul (version 2.5 which contains some small corrections compared to the version 2.4 from 2003) and the soulutf8 which added some support for UTF-8. Namely the input encodings utf8.def from package inputenc and package ucs’s utf8x.def are supported. The original soul package has been renamed to soul-ori and is still loaded. Its documentation is still relevant. [ctan.org/pkg/soul]

> 这个版本是原始软件包soul（版本2.5，与2003年的版本2.4相比，包含了一些小的修正）和soulutf8的合并，后者增加了对UTF-8的支持。即，输入编码utf8.def来自软件包inputenc，软件包ucs的utf8x.def也得到了支持。原始的soul软件包已经更名为soul-ori，并仍然被加载。其文档仍然适用。 [ctan.org/pkg/soul]

## usage

### example

```tex
\documentclass{article}
\usepackage{xcolor}
\sethlcolor{yellow}
\setulcolor{blue}
\setstcolor{red}
\usepackage{soul}

\begin{document}
\hl{Highlighted text} % Highlighted text \\
\ul{Underlined text} % Underlined text \\
\st{Strikethrough text} % Strikethrough text \\
\so{Small-caps text} % Small caps \\
\hl{\st{highlighted and strikethrough}}
\end{document}
```
