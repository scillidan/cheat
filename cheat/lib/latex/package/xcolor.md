````md
`xcolor` is a powerful package in LaTeX that allows you to manage and manipulate colors in your documents. It provides a wide range of features, such as configuring colors, creating color models, and applying colors to text, tables, and forms.

### Key Features of `xcolor`:
4. **Color Models**: Supports different color models, including RGB, CMYK, and Gray.
5. **Predefined Colors**: Comes with a set of predefined colors, and also allows you to define your custom colors.
6. **Color Links and Tables**: Enables color links in hypertext documents and colored tables.
7. **Gradient Colors**: Allows you to create gradient fills for shapes and text.
8. **Color Schemes**: Support for different color schemes and harmonies.

### Basic Usage:
To use the `xcolor` package, you need to include it in the preamble of your LaTeX document:

```latex
\documentclass{article}
\usepackage{xcolor}
\begin{document}

% Example of colored text
\textcolor{red}{This text is red.}

% Define and use a new color
\definecolor{mycolor}{RGB}{0,128,255}
\textcolor{mycolor}{This text is in my custom color.}

\end{document}
```

In this example:
- `\usepackage{xcolor}` includes the package in your document.
- `\textcolor{red}{...}` creates red colored text.
- `\definecolor{mycolor}{RGB}{0,128,255}` defines a new color named `mycolor` using the RGB model, which you can then use similarly to predefined colors.

You can find more information regarding the `xcolor` package at its CTAN page: https://ctan.org/pkg/xcolor.
````

````md
`xcolor` 是 LaTeX 中一个强大的宏包，允许你在文档中管理和操作颜色。它提供了丰富的功能，比如配置颜色、创建颜色模型，以及将颜色应用于文本、表格和表单。

### `xcolor` 的主要功能：
9. **颜色模型**：支持多种颜色模型，包括 RGB、CMYK 和灰度。
10. **预定义颜色**：自带一组预定义颜色，同时也允许你定义自定义颜色。
11. **彩色链接和表格**：支持超文本文档中的彩色链接和着色表格。
12. **渐变色**：可以为图形和文本创建渐变填充效果。
13. **颜色方案**：支持不同的颜色方案和配色协调。

### 基本用法：
使用 `xcolor` 宏包时，需要在 LaTeX 文档的导言区引入它：

```latex
\documentclass{article}
\usepackage{xcolor}
\begin{document}

% 彩色文本示例
\textcolor{red}{这段文字是红色的。}

% 定义并使用自定义颜色
\definecolor{mycolor}{RGB}{0,128,255}
\textcolor{mycolor}{这段文字使用了自定义颜色。}

\end{document}
```

在这个例子中：
- `\usepackage{xcolor}` 将该宏包包含进文档。
- `\textcolor{red}{...}` 用于创建红色文字。
- `\definecolor{mycolor}{RGB}{0,128,255}` 定义了一个名为 `mycolor` 的新颜色，使用 RGB 模型，然后你可以像使用预定义颜色一样使用它。

你可以在 CTAN 页面查看更多关于 `xcolor` 宏包的信息：https://ctan.org/pkg/xcolor 。
````