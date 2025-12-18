# [polyglossia](https://www.ctan.org/pkg/polyglossia)

> This package provides an alternative to Babel for users of XeLaTeX and LuaLaTeX. This version includes support for over 80 different languages, some of which in different regional or national varieties, or using a different writing system.  
> Polyglossia makes it possible to automate the following tasks:  
> - Loading the appropriate hyphenation patterns.
> - Setting the script and language tags of the current font (if possible and available), using the package fontspec.
> - Switching to a font assigned by the user to a particular script or language.
> - Adjusting some typographical conventions in function of the current language (such as afterindent, frenchindent, spaces before or after punctuation marks, etc.).
> - Redefining the document strings (like “chapter”, “figure”, “bibliography”).
> - Adapting the formatting of dates (for non-gregorian calendars via external packages bundled with polyglossia: currently the Hebrew, Islamic and Farsi calendars are supported).
> - For languages that have their own numeration system, modifying the formatting of numbers appropriately.
> - Ensuring the proper directionality if the document contains languages written from right to left (via the packages bidi and luabidi, available separately). [ctan.org/pkg/polyglossia]

> 该包为XeLaTeX和LuaLaTeX的用户提供了对Babel的替代方案。此版本支持超过80种不同语言，其中一些语言有不同的地区或国家变体，或使用不同的书写系统。  
> Polyglossia使得自动化以下任务成为可能：  
> - 加载适当的断字模式。  
> - 设置当前字体的脚本和语言标签（如果可能且可用），使用包fontspec。  
> - 切换到用户为特定脚本或语言分配的字体。  
> - 根据当前语言调整某些排版惯例（比如缩进后的空格、法语缩进、标点符号前后的空格等）。  
> - 重新定义文档字符串（如“章节”、“图”、“参考文献”）。  
> - 调整日期的格式（针对非公历的日历，通过与polyglossia捆绑的外部包：目前支持希伯来历、伊斯兰历和法尔斯历）。  
> - 对于有自己数字系统的语言，适当修改数字的格式。  
> - 确保文档的正确方向性，如果文档包含从右到左书写的语言（通过分别提供的包bidi和luabidi）。 [ctan.org/pkg/polyglossia]

## usage

### example

```tex
% !TeX program = xelatex

\documentclass{article}
\usepackage{fontspec}
\usepackage{polyglossia}
\setdefaultlanguage{chinese}
\setotherlanguage{english}
% Package noto, notoCJKsc
\setmainfont{Noto Serif CJK SC}[Script=CJK]
\newfontfamily\chinesefont{Noto Serif CJK SC}[Script=CJK]
% Package arphic-ttf
%\setmainfont{bkai00mp.ttf}[Script=CJK]% ZenKai-Medium
%\setmainfont{bsmi00lp.ttf}[Script=CJK]% ShanHeiSun-Light
%\setmainfont{gbsn00lp.ttf}[Script=CJK]% BousungEG-Light-GB
%\setmainfont{gkai00mp.ttf}[Script=CJK]% GBZenKai-Medium
\begin{document}
\parindent0em

\begin{center}
  \abstractname
\end{center}
\begin{english}
This package provides an alternative to Babel for users of XeLaTeX and LuaLaTeX. This version includes support for over 80 different languages, some of which in different regional or national varieties, or using a different writing system.
\footnote{%
  This is a footnote.}

This is today: \today
\end{english}

\section{(简体中文, Simplified Chinese)}

该软件包为使用XeLaTeX和LuaLaTeX的用户提供了Babel的替代方案。此版本支持超过80种不同的语言，其中一些具有不同的区域或国家变体，或使用不同的书写系统。

\today

localnumeral: \localnumeral{1863}, chinesenumeral: \chinesenumeral{1863}

\renewfontfamily\chinesefont{Noto Serif CJK TC}[Script=CJK]
\begin{chinese}[variant=traditional,numerals=chinese]

\section{(繁體中文, Traditional Chinese)}

該軟體包為使用XeLaTeX和LuaLaTeX的用戶提供了Babel的替代方案。此版本支持超過80種不同的語言，其中一些具有不同的區域或國家變體，或使用不同的書寫系統。

\today

localnumeral: \localnumeral{1863}, chinesenumeral: \chinesenumeral{1863}

\end{chinese}

\section{numeral}
\begin{english}

numerals=arabic: \textchinese[numerals=arabic]{\localnumeral{1863}, \chinesenumeral{1863}}

numerals=chinese: \textchinese[numerals=chinese]{\localnumeral{1863}, \chinesenumeral{1863}}

\end{english}

\end{document}
```
