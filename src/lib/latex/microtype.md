# [microtype](https://www.ctan.org/pkg/microtype)

> The package provides a LaTeX interface to the micro-typographic extensions that were introduced by pdfTeX and have since also propagated to XeTeX and LuaTeX: most prominently, character protrusion and font expansion, furthermore the adjustment of interword spacing and additional kerning, as well as hyphenatable letterspacing (tracking) and the possibility to disable all or selected ligatures.  
> These features may be applied to customisable sets of fonts, and all micro-typographic aspects of the fonts can be configured in a straight-forward and flexible way. Settings for various fonts are provided.  
> Note that character protrusion requires pdfTeX, LuaTeX, or XeTeX. Font expansion works with pdfTeX or LuaTeX. The package will by default enable protrusion and expansion if they can safely be assumed to work. Disabling ligatures requires pdfTeX or LuaTeX, while the adjustment of interword spacing and of kerning only works with pdfTeX. Letterspacing is available with pdfTeX, LuaTeX or XeTeX.  
> The alternative package ‘letterspace’, which also works with plain TeX, provides the user commands for letterspacing only, omitting support for all other extensions. [ctan.org/pkg/microtype]

> 该包提供了一个LaTeX接口，用于微排版扩展，这些扩展是由pdfTeX引入的，后来也传播到了XeTeX和LuaTeX：最显著的包括字符突出、字体扩展，此外还有单词间距的调整和额外的字距调节，以及可断字的字母间距（跟踪）和禁用所有或选定连字的可能性。  
> 这些功能可以应用于可定制的字体集，所有微排版方面的字体设置都可以以简单和灵活的方式进行配置。提供了各种字体的设置。  
> 请注意，字符突出需要pdfTeX、LuaTeX或XeTeX。字体扩展可以在pdfTeX或LuaTeX下工作。该包默认启用突出和扩展功能，如果可以安全地假定它们可以正常工作。禁用连字需要pdfTeX或LuaTeX，而单词间距和字距的调整仅在pdfTeX下有效。字母间距在pdfTeX、LuaTeX或XeTeX下可用。  
> 替代包“letterspace”也支持plain TeX，仅提供字母间距的用户命令，省略对所有其他扩展的支持。 [ctan.org/pkg/microtype]

## quickstart

```tex
\documentclass{article}
\usepackage{lipsum}
\usepackage[protrusion=true,expansion]{microtype}}

\begin{document}
\lipsum[1-2]
\end{document}
```
