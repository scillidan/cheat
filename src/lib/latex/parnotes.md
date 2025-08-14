# [parnotes](https://www.ctan.org/pkg/parnotes)

> The parnotes package adds a new note type, \parnote. Parnotes are set as normal, running paragraphs and may be placed two ways:  
> - Automatically, at the end of the paragraph  
> - Manually, using the \parnotes command  
> This package was inspired by a question on the TEX Stack Exchange3 that asked for notes which are placeable immediately after the paragraph in which they are mentioned, to avoid the interruption posed by footnotes. [ctan.org/pkg/parnotes]

> parnotes包添加了一种新的注释类型`\parnote`。parnotes作为正常的运行段落设置，可以通过两种方式放置：  
> - 自动放置在段落末尾  
> - 手动放置，使用`\parnotes`命令  
> 该包的灵感来源于TEX Stack Exchange上的一个问题，该问题询问如何将注释放在提到它们的段落后，以避免脚注带来的干扰。 [ctan.org/pkg/parnotes]

## quickstart

```tex
\usepackage{parnotes}
```

```tex
Text\parnote{``Placing footnotes or endnotes at the end of the current paragraph''} \\

Text\parnote{``Placing footnotes or endnotes at the end of the current paragraph''}
\parnotes
```

## cross-reference

- [fmitex-parnotes_ex1.md](/lib/latex/_example/fmitex-parnotes_ex1.md)
