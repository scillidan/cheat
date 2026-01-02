# [colorblind](https://www.ctan.org/pkg/colorblind)

> In colorblind-safe documents, the contents are presented in a way that the same information is conveyed to readers regardless of a potential color vision deficiency. This package provides the tools necessary for colorblind-safe typesetting in LaTeX. It provides color schemes for a wide range of applications.  
> The most commonly used schemes are qualitative schemes, providing easily distinguishable colors for use in graphics, but also for text coloring or highlighting. Additionally, diverging and sequential schemes are included which can be used for encoding quantitative information using colors. This package 
incorporates colorblind-safeness into the writing process, making it both less cumbersome and less error-prone. [ctan.org/pkg/colorblind]

> 在色盲安全文档中，内容的呈现方式确保无论读者是否有潜在的色彩视觉缺陷，都能传达相同的信息。该包提供了在LaTeX中进行色盲安全排版所需的工具。它提供了适用于广泛应用的配色方案。  
> 最常用的方案是定性方案，提供易于区分的颜色，适用于图形，但也可用于文本着色或高亮。此外，包含了发散型和顺序型方案，可用于使用颜色编码定量信息。该包将色盲安全性纳入写作过程，使其既不繁琐又不容易出错。 [ctan.org/pkg/colorblind]

## usage

### example

```tex
\documentclass{article}

\usepackage{xcolor}
\usepackage{soul}
\usepackage[keep-defaults, Tol, OkabeIto, pgf]{colorblind}

\newcommand\colorblind{\textbf{colorblind}}
\newcommand\hlc[2][T-Q-PH4]{{
    \colorlet{foo}{#1}
    \sethlcolor{foo}\hl{#2}}
}

\begin{document}

\hlc[T-Q-B1]{blue} \\
\hlc[T-Q-B2]{cyan} \\
\hlc[T-Q-B3]{green} \\
\hlc[T-Q-B4]{yellow} \\
\hlc[T-Q-B5]{red} \\
\hlc[T-Q-B6]{violet} \\
\hlc[T-Q-B0]{gray}

\end{document}
```

## reference

- #file [colorblind_doc.tex](https://github.com/simon-pfahler/colorblind/blob/main/colorblind_doc.tex)
