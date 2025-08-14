# [phfextendedabstract](https://ctan.org/pkg/phfextendedabstract)

> Here are the main features of the phfextendedabstract class:  
> - The class phfextendedabstract loads the revtex4-2 class, so you can directly use REVTEX’s features such as author affiliations, etc.
> - Only two sectioning commands are enabled: \section and \paragraph. Both have run-in headings. If you find yourself needing additional sectioning levels, it might be that your extended abstract is too detailed and you might want to think about how to keep it at a higher level. It might also be that phfextendedabstract is too limited for your needs. By default, section and paragraphs have “decorations” (by default a symbol in the margin) to guide the reader through the overall high-level structure of the document. (Disable them with the noheadingdecorations class option.)
> - You can easily scale all vertical spacing dimensions (section and paragraph spacing, vertical space around theorems and list environments, etc.) by a common factor with a class option. Do you have those extra two lines that make you exceed your 3-page limit? Try squeezing everything together with a class option like compressverticalspacing=0.7.
> - The phfnote package is loaded in order to provide a set of default LATEX packages and set up hyperlinks. A generous default set of standard LaTeX packages are loaded, including caption and enumitem; see phfnote’s documentation for the option pkgset=extended. You are expected to include \usepackage{hyperref} somewhere in your preamble. We deliberately don’t include hyperref when loading the class in order to give you greater control of package loading order (most packages you might want to use must be loaded before hyperref).
> - The page margins are tweaked with the geometry package. (Simply call \geometry{...} if you’d like to further change them. Refer to the geometry package’s documentation.)
> - Lists, i.e. the itemize and enumerate environments, are customized using the enumitem package so that they take up less space. You also get a enumerate* environment that typesets its items in-line, in a single paragraph. (Note that this customization won’t work if you choose to load a package set via a pkgset= option that doesn’t include enumitem.)
> - By default we load the phfthm package and set a customized theorem style so that it stands out but also so that it contrasts well with the section and paragraph headings. [ctan.org/pkg/phfextendedabstract]

> 以下是phfextendedabstract类的主要特点：  
> - 类phfextendedabstract加载了revtex4-2类，因此您可以直接使用REVTEX的功能，如作者附属关系等。  
> - 仅启用两个分级命令：\section和\paragraph。两个命令都有行内标题。如果您发现自己需要额外的分级层次，可能是因为您的扩展摘要过于详细，您可能需要考虑如何将其保持在更高的层次。也可能是phfextendedabstract对您的需求过于有限。默认情况下，章节和段落有“装饰”（默认为边缘的一个符号），以引导读者了解文档的整体高层结构。（使用noheadingdecorations类选项禁用它们。）  
> - 您可以使用类选项轻松缩放所有垂直间距尺寸（章节和段落间距、定理和列表环境周围的垂直间距等），以一个共同的因子。如果您有额外的两行使您超出了3页限制，可以尝试使用类似compressverticalspacing=0.7的类选项将所有内容压缩在一起。  
> - 加载phfnote包以提供一组默认的LATEX包并设置超链接。加载了一组慷慨的标准LaTeX包，包括caption和enumitem；有关选项pkgset=extended的详细信息，请参见phfnote的文档。您需要在导言区某处包含\usepackage{hyperref}。我们故意不在加载类时包含hyperref，以便让您更好地控制包的加载顺序（大多数您可能想使用的包必须在hyperref之前加载）。  
> - 页面边距使用geometry包进行了调整。（如果您想进一步更改它们，只需调用\geometry{...}。参见geometry包的文档。）  
> - 列表，即itemize和enumerate环境，使用enumitem包进行了自定义，以减少空间。您还可以获得一个enumerate*环境，将其项目排版为内联，呈现在一个段落中。（注意，如果您选择通过不包括enumitem的pkgset=选项加载包集，则此自定义将不起作用。）  
> - 默认情况下，我们加载phfthm包并设置自定义的定理样式，以便其突出而与章节和段落标题形成良好的对比。 [ctan.org/pkg/phfextendedabstract]
