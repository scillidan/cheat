# [array](https://www.ctan.org/pkg/array)

> The CTAN package "array" is an extended implementation of LaTeX's standard array and tabular environments. It enhances the formatting options available for columns and provides more programmable format specifications. This means that users can customize column styles and layout in tables and arrays more flexibly than with the default LaTeX tools. It also addresses some technical issues by allowing fragile LaTeX commands to be used inside arrays and tables without needing additional protection. The package adds features such as the ability to adjust extra row height for better spacing, specify special fonts or formatting for individual columns directly in the preamble, and more refined control over table appearance. [perplexity.ai]

> CTAN包“array”是对LaTeX标准array和tabular环境的扩展实现。它增强了列的格式选项，并提供了更多可编程的格式规范。这意味着用户可以比使用默认的LaTeX工具更灵活地自定义表格和数组中的列样式和布局。它还通过允许在数组和表格中使用脆弱的LaTeX命令而无需额外保护来解决了一些技术问题。该包添加了诸如调整额外行高以获得更好间距、在前言中直接为单个列指定特殊字体或格式以及对表格外观更精细控制等功能。  [perplexity.ai]

## quickstart

```tex
\usepackage{array}
```

```tex
\begin{tabular}{|>{\centering}p{3cm}|>{\raggedleft}p{3cm}|}
    \hline
    Centered Text & Right-aligned Text \\
    \hline
    Sample 1 & Example 1 \\
    Sample 2 & Example 2 \\
    \hline
\end{tabular}
```
