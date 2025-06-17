---
source: https://github.com/FrankMittelbach/fmitex-parnotes
pdf: "[[fmitex-parnotes.pdf]]"
---

## Summary

```md
**Project Name:** fmitex-parnotes, a TeX package for handling paragraph notes. This project introduces the `\parnote` command, allowing users to create a new type of note that appears as regular running paragraphs. It provides flexible placement options for these notes, contributing to improved document formatting. This package is particularly useful for users who need to integrate annotations seamlessly into their TeX documents, enhancing the readability and organization of content.

Tags: `TeX`, `LaTeX`, `notes`, `paragraph`, `typesetting`
```

```md
**项目名称:** fmitex-parnotes，一个用于处理段落注释的TeX包。该项目引入了 `\parnote` 命令，允许用户创建一种新的注释类型，这种注释以常规段落的形式出现。它提供了灵活的放置选项，有助于改善文档格式。这个包对于需要将注释无缝集成到TeX文档中的用户特别有用，增强了内容的可读性和组织性。

标签: `TeX`, `LaTeX`, `注释`, `段落`, `排版`
```

## Quickstart

```tex
\usepackage{parnotes}
```

```tex
Text\parnote{``Placing footnotes or endnotes at the end of the current paragraph''} \\

Text\parnote{``Placing footnotes or endnotes at the end of the current paragraph''}
\parnotes
```

## [parnotes.tex](https://github.com/FrankMittelbach/fmitex-parnotes/blob/main/parnotes.tex)

````md
This LaTeX code is a complete document that demonstrates the use of the `parnotes` package, which allows notes to appear immediately after the paragraph in which they are mentioned, rather than at the bottom of the page or the end of a section, thus making the text flow more natural. Let's break down the key components and their functionality step by step:

### Document Class and Packages
```latex
\documentclass[10pt]{article}
```
This line sets the document class to `article`, which is suitable for shorter documents, and specifies a font size of 10 points.

### Package Inclusions
Various packages are included, each serving particular purposes:
- `babel`: Language support, in this case, for US English.
- `Alegreya` and `AlegreyaSans`: These packages provide specific font styles.
- `fontspec`: (commented out) Allows for more control over fonts, typically in XeLaTeX or LuaLaTeX.
- `amsmath`: Enhances the capabilities for mathematical typesetting.
- `parnotes`: The main package for adding paragraph notes.
- `xcolor`: Allows for color management in the document.
- `hyperref`: Enables hyperlinks within the document (such as to URLs or references).
- `varwidth`: Useful for managing widths of elements.
- `accsupp`: Provides accessibility support for PDF output.
- `fancyhdr`: Allows for customization of headers and footers.
- `listings`: For including code listings and syntax highlighting.
- `booktabs`: For better formatting of tables.
- `microtype`: Improves the appearance of the text through font expansion and character protrusion.

### Document Title, Author, and Date
```latex
\title{The \textsf{parnotes} package\parnote{This is rev.~3c, last modified 2024/06/12.}}
\author{Chelsea Hughes\parnote{See \texttt{parnotes.sty} for copyright details. The package has currently no maintainer.}}
\date{June 12, 2024}
```
This portion sets the title, author, and date of the document. The usage of `\parnote{}` here would mean that there are notes linked to the title and author.

### Main Functionality
Inside the `document` environment:
```latex
\begin{document}
\maketitle
\parnotes
```
The command `\maketitle` generates the title and author information in the document, and `\parnotes` will display any accumulated notes.

### Adding Notes
The body of the document provides examples of how to use the `parnotes`:
```latex
The \textsf{parnotes} package adds a new note type, \verb+\parnote+.
...
This package was inspired by a question on the \TeX\ Stack Exchange\parnote{``Placing footnotes or endnotes at the end of the current paragraph'' at \url{http://tex.stackexchange.com/questions/34746}}.
```
Here, `\parnote{}` is used to add notes inline with the content. 

### Usage and Configuration Sections
These sections explain how to use the package, how to customize formatting, and how to utilize various commands like `\parnote`, `\parnotes`, and formatting options. There are also examples of how to customize the appearance of the parnotes through various options.

### Example Section
At the end of the document, there's a section showcasing how to integrate `parnotes` within different environments:
```latex
\begin{enumerate}
\begin{autopn}
...
\parnotes
\end{enumerate}
```
This illustrates how to work with lists or nested environments.

### Conclusion 
This document is well-structured to serve as both documentation for the `parnotes` package and as a practical example for users to understand how to implement it. 

For more information about the `parnotes` package, you can visit:
https://ctan.org/pkg/parnotes
````

````md
这段 LaTeX 代码是一个完整的文档，展示了 `parnotes` 包的使用，该包允许注释紧接着提及的段落后面出现，而不是在页面底部或章节末尾，从而使得文本流更加自然。让我们逐步解析关键组件及其功能：

### 文档类别和包
```latex
\documentclass[10pt]{article}
```
这一行将文档类别设置为 `article`，适合较短的文档，并指定了 10 磅的字体大小。

### 包的引入
引入了多个包，每个包都有特定的用途：
- `babel`：语言支持，本例中为美式英语。
- `Alegreya` 和 `AlegreyaSans`：这两个包提供了特定的字体样式。
- `fontspec`：（已注释）允许对字体进行更详细的控制，通常用于 XeLaTeX 或 LuaLaTeX。
- `amsmath`：增强数学排版的能力。
- `parnotes`：增加段落注释的主要包。
- `xcolor`：允许在文档中进行颜色管理。
- `hyperref`：使文档内启用超链接（例如指向网址或参考文献）。
- `varwidth`：用于管理元素宽度。
- `accsupp`：为 PDF 输出提供可访问性支持。
- `fancyhdr`：允许自定义页眉和页脚。
- `listings`：用于包含代码列表和语法高亮。
- `booktabs`：用于更好地格式化表格。
- `microtype`：通过字体扩展和字符突出处改善文本外观。

### 文档标题、作者和日期
```latex
\title{The \textsf{parnotes} package\parnote{This is rev.~3c, last modified 2024/06/12.}}
\author{Chelsea Hughes\parnote{See \texttt{parnotes.sty} for copyright details. The package has currently no maintainer.}}
\date{June 12, 2024}
```
这一部分设置文档的标题、作者和日期。在这里使用 `\parnote{}` 表示与标题和作者相关联的注释。

### 主要功能
在 `document` 环境中：
```latex
\begin{document}
\maketitle
\parnotes
```
命令 `\maketitle` 生成文档中的标题和作者信息，` \parnotes ` 会显示所有累积的注释。

### 添加注释
文档主体提供了如何使用 `parnotes` 的示例：
```latex
The \textsf{parnotes} package adds a new note type, \verb+\parnote+.
...
This package was inspired by a question on the \TeX\ Stack Exchange\parnote{``Placing footnotes or endnotes at the end of the current paragraph'' at \url{http://tex.stackexchange.com/questions/34746}}.
```
在这里，`\parnote{}` 用于在内容中添加内联注释。

### 用法和配置部分
这些部分解释了如何使用该包，如何自定义格式，以及如何利用各种命令，如 `\parnote`、`\parnotes` 和格式选项。还展示了如何通过各种选项自定义段落注释的外观。

### 示例部分
在文档末尾，有一节展示如何在不同环境中集成 `parnotes`：
```latex
\begin{enumerate}
\begin{autopn}
...
\parnotes
\end{enumerate}
```
这展示了如何处理列表或嵌套环境。

### 结论
该文档结构合理，既可以作为 `parnotes` 包的文档，也为用户理解如何实现它提供了实际示例。

有关 `parnotes` 包的更多信息，请访问：
https://ctan.org/pkg/parnotes
````