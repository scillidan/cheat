# [responsive](https://www.ctan.org/pkg/responsive)

> Responsive design aims to display text and other design elements well on variety of outputs, including electronic devices or various paper sizes. It originated on the Web, using Cascading Style Sheets to change design elements.  
> This package tries to achieve similar results with LaTeX. The main aim is to support the output of multiple editions of one document with readable font sizes regardless of the physical size of the produced PDF, from smartphones or e-ink readers to printed A4 pages. [ctan.org/pkg/responsive]

> 响应式设计旨在使文本和其他设计元素在多种输出设备上表现良好，包括电子设备或各种纸张大小。它起源于网络，使用层叠样式表来改变设计元素。  
> 该包试图在LaTeX中实现类似的效果。其主要目的是支持同一文档的多个版本的输出，确保无论生成的PDF的物理大小如何，字体大小都可读，从智能手机或电子书阅读器到打印的A4页面。 [ctan.org/pkg/responsive]

## usage

### example

```tex
\documentclass{article}
\usepackage{lipsum}
\usepackage{responsive}

\begin{document}
\noindent
\fbox{
\begin{minipage}{8cm}
  \setsizes[38]{28}
  \huge huge \\ 
  \large large \\
  \normalsize normal \\
  \scriptsize scriptsize
\end{minipage}
}
\fbox{
\begin{minipage}{4cm}
  \mediaquery{min-textwidth=3.9cm}{
    media query matched
    \ResponsiveSetup{scale=tetratonic}
    \setsizes[38]{28}
  }{media query not matched}
  \huge huge \\
  \large large \\
  \normalsize normal \\
  \scriptsize scriptsize
\end{minipage}
}
\noindent
\fbox{
\begin{minipage}{4cm}
  \ResponsiveSetup{scale=tritonic}
  \setsizes[38]{28}
  \huge huge \\
  \large large \\
  \normalsize normal \\
  \scriptsize scriptsize
\end{minipage}
}
\fbox{
\begin{minipage}{4cm}
  \ResponsiveSetup{scale=heptatonic}
  \setsizes[38]{28}
  \huge huge \\
  \large large \\
  \normalsize normal \\
  \scriptsize scriptsize
\end{minipage}
}
\fbox{
\begin{minipage}{4cm}
  \ResponsiveSetup{number=10,ratio=6}
  \setsizes[38]{28}
  \huge huge \\
  \large large \\
  \normalsize normal \\
  \scriptsize scriptsize
\end{minipage}
}
\end{document}
```
