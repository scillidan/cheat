# [kdpcover](https://www.ctan.org/pkg/kdpcover)

> The problem this class solves is the necessity to change the size of the cover PDF according to the number of pages in the book — the bigger the book, the larger the spine of the book must be. The provided class makes the necessary calculations on-the-fly, using the qpdf tool. Obviously, you need to have it installed. Also, you must run pdflatex with the --shell-escape option, in order to allow LaTeX to run qpdf. [ctan.org/pkg/kdpcover]

> 该类解决的问题是根据书籍的页数更改封面PDF的大小——书籍越大，书脊的宽度就必须越大。提供的类实时进行必要的计算，使用qpdf工具。显然，你需要安装它。此外，你必须使用`--shell-escape`选项运行pdflatex，以允许LaTeX运行qpdf。 [ctan.org/pkg/kdpcover]

## quickstart

```tex
\documentclass[pages=200,6x9]{kdpcover}

\begin{document}
\putSpine{kdpcover, a LaTeX class for KDP books}
\putVolume{1}
\putVersion{0.6.1}
\putPrice{\$0.00}
\putCopyright{\the\year}{Yegor Bugayenko}
\putTitle{kdpcover}
\putAuthor{Yegor Bugayenko}
\putTLDR{This book will tell you
	an interesting story!}
% Download this from https://mirrors.ctan.org/macros/latex/contrib/kdpcover/cactus.pdf
\putPicture{cactus.pdf}

\end{document}
```
