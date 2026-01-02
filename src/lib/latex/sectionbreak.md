# [sectionbreak](https://www.ctan.org/pkg/sectionbreak)

> This package provides LaTeX support for section breaks, used mainly in fiction books to signal changes in a story, like changes in time, location, etc. It supports the asterism symbol, text content, or custom macros as the section break mark symbol. [ctan.org/pkg/sectionbreak]

> 该包为LaTeX提供了章节分隔符的支持，主要用于小说书籍中以标示故事中的变更，如时间、地点等的变化。它支持星形符号、文本内容或自定义宏作为章节分隔符标记符号。 [ctan.org/pkg/sectionbreak]

## usage

### example

```tex
\documentclass{article}
\usepackage[asterism]{sectionbreak}

\begin{document}
Section separated by three exclamation marks.
\sectionbreak[!!!]
Section separated by asterism section mark requested in \texttt{\textbackslash usepackage}.
\sectionbreak
Section separated by a rule.
\sectionbreakmark{\rule{10em}{3pt}}
\sectionbreak
\end{document}
```
