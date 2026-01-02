# [pagelayout](https://www.ctan.org/pkg/pagelayout)

> The pagelayout class enables you to layout pages declaratively using simple macros for pages, covers, grids, templates, text, and graphics to create graphic rich, perfectly typeset, and print ready PDFs.  
> The integration of Inkscape allows you to create box shadows.  
> The integration of ImageMagick allows you to configure compression and sharpening for bitmap graphics to export web, print or preview versions of your document. Parallelized image optimization, caching, and a draft mode enable fast PDF creation and a responsive workflow, even for large documents with lots of photos and graphics.  
> The pagelayout class also integrates the PGF/TikZ and tcolorbox LaTeX packages. [ctan.org/pkg/pagelayout]

> pagelayout类使您能够使用简单的宏以声明方式布局页面，包括页面、封面、网格、模板、文本和图形，以创建图形丰富、排版完美且适合打印的PDF。  
> Inkscape的集成允许您创建框阴影。  
> ImageMagick的集成允许您配置位图图形的压缩和锐化，以导出文档的网页、打印或预览版本。并行图像优化、缓存和草稿模式使得即使对于包含大量照片和图形的大型文档也能快速创建PDF并实现高效的工作流程。  
> pagelayout类还集成了PGF/TikZ和tcolorbox LaTeX包。 [ctan.org/pkg/pagelayout]

## usage

### example

```tex
\documentclass[draft,grid,graphpaper,preflight,optimize={density=600}]{pagelayout}
\usepackage{microtype}

\pagewidth=5.5cm
\pageheight=4cm
\margin=5mm
\gutter=5mm
\bleed=2mm
\setpagecolor{white}

\begin{document}
  \newtemplate{my template}{
    \setgrid{
      {[2]{3!}{2!}}
    }
    \placeholder{0 0 1 1}
    \placeholder{0 1 1 2}
  }
  \template{my template}{}

  \nogrid
  \newborder{my border}{width = 1mm, color = white, radius = 5mm}
  \newshadow{my shadow}{size = 7}
  \template{my template}{
    \graphic[
      scale=1.05,
      hpos=0,
      vpos=0.3,
      shadow=my shadow,
      border=my border,
      border radius=0mm
			% A exampleImage.jpg here.
			]{exampleImage}
  }
\end{document}
```
