---
source: https://github.com/MartinScharrer/adjustbox
pdf: "[[adjustbox.pdf]]"
---

## Summary

```md
**adjustbox**, a LaTeX bundle for adjusting the size and position of graphics. This project contains the adjustbox package along with auxiliary packages trimclip and adjcalc. Its primary purpose is to enhance the functionality of LaTeX by providing tools to easily manage content dimensions and placements, making document preparation more versatile and user-friendly. The adjustbox package allows for dynamic sizing of elements like images and tables, ensuring they fit well within their containers.

Tags: `latex`, `adjustbox`, `graphics`, `document`, `packaging`
```

```md
**adjustbox**，一个用于调整图形大小和位置的 LaTeX 宏包套装。该项目包含 adjustbox 宏包以及辅助宏包 trimclip 和 adjcalc。其主要目的是通过提供便捷的内容尺寸和位置管理工具，增强 LaTeX 的功能，使文档制作更加多样化和用户友好。adjustbox 宏包允许动态调整图像和表格等元素的大小，确保它们能够良好地适应其容器内的空间。

标签：`latex`，`adjustbox`，`graphics`，`document`，`packaging`
```

## Quickstart

```tex
\usepackage{adjustbox}
```

```tex
\adjustbox{angle=90}{
    Rotating the text by 90 degrees
}
```

## [demo.tex](https://github.com/MartinScharrer/adjustbox/blob/main/demo.tex)

````md
Let's break down the provided LaTeX code step by step, so you can better understand how it works, focusing on the `adjustbox` package and the custom command defined in this document.

### Overview of the Code

This LaTeX document demonstrates various functionalities of the `adjustbox` package, which allows you to resize, manipulate, and position the content in a flexible way. The document includes a custom command `\Adjustbox` as well, which standardizes how adjustments are showcased.

### Breakdown of the Code

1. **Document Class and Package Inclusion:**
   ```latex
   \documentclass{article}
   \usepackage{adjustbox}
   ```
   - The document is of class `article`, suitable for reports and shorter documents.
   - The `adjustbox` package is included for handling adjustments to boxes containing text or images.

2. **Custom Command Creation:**
   ```latex
   \newcommand\Adjustbox[1]{%
       \par
       \bigskip
       \noindent
       {\ttfamily\detokenize{#1}:\ }%
       \par\smallskip\noindent
       \adjustbox{#1}%
   }
   ```
   - Defines a new command `\Adjustbox` that takes one parameter. 
   - It formats the parameter as text using `\detokenize`, which shows the keys (adjustment options) used for each adjustment and applies it using the `\adjustbox` command.

3. **Document Content:**
   The document contains several calls to the `\Adjustbox` command demonstrating various uses of `\adjustbox`:
   ```latex
   \begin{document}
   ```
   - The main content starts here.

4. **Examples of Usage:**
   Here are a few examples along with explanations of what each adjustment does.

   - **Without keys**:
     ```latex
     \noindent
     Without keys:\par\noindent
     \adjustbox{}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - A regular box without any adjustments specified. It just displays the text as is.

   - **Scaling**:
     ```latex
     \Adjustbox{scale=.5}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - This scales the box down to 50% of its original size.

   - **Width Adjustment**:
     ```latex
     \Adjustbox{width=.5\width}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - This sets the width of the box to half the width of the current line.

   - **Framing the Text**:
     ```latex
     \Adjustbox{frame}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - Adds a frame around the text.

   - **Rotating Text**:
     ```latex
     \Adjustbox{angle=90}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - Rotates the content 90 degrees.

5. **Document End:**
   ```latex
   \end{document}
   ```

### Summary

The provided LaTeX code demonstrates how to create and use adjustable boxes with various functionalities, such as scaling, framing, and rotating content, using the `adjustbox` package. 

For more detailed information about the `adjustbox` package and its features, you can visit its CTAN page: [https://ctan.org/pkg/adjustbox](https://ctan.org/pkg/adjustbox). 

Feel free to ask if you have specific questions about any part of the code or need further clarification on any concept!


````

````md
让我们逐步解析提供的LaTeX代码，以便您更好地理解它的工作原理，重点关注`adjustbox`包及本文件中定义的自定义命令。

### 代码概述

这个LaTeX文档演示了`adjustbox`包的各种功能，该包允许您以灵活的方式调整、操作和定位内容。文档中还包括了一个自定义命令`\Adjustbox`，该命令标准化了如何展示调整内容。

### 代码分解

1. **文档类和包的引入：**
   ```latex
   \documentclass{article}
   \usepackage{adjustbox}
   ```
   - 文档的类为`article`，适用于报告和短文档。
   - 引入了`adjustbox`包以处理包含文本或图像的框的调整。

2. **自定义命令的创建：**
   ```latex
   \newcommand\Adjustbox[1]{%
       \par
       \bigskip
       \noindent
       {\ttfamily\detokenize{#1}:\ }%
       \par\smallskip\noindent
       \adjustbox{#1}%
   }
   ```
   - 定义了一个新的命令`\Adjustbox`，它接受一个参数。
   - 使用`\detokenize`格式化参数为文本，以显示每个调整所使用的关键字（调整选项），并通过`\adjustbox`命令应用它。

3. **文档内容：**
   文档包含多个对`\Adjustbox`命令的调用，演示了`\adjustbox`的各种用法：
   ```latex
   \begin{document}
   ```
   - 主要内容从这里开始。

4. **用法示例：**
   这里有几个示例以及每个调整的解释。

   - **不使用键**：
     ```latex
     \noindent
     Without keys:\par\noindent
     \adjustbox{}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - 一个没有指定任何调整的常规框。它只是显示文本本身。

   - **缩放**：
     ```latex
     \Adjustbox{scale=.5}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - 将框缩小到其原始大小的50%。

   - **宽度调整**：
     ```latex
     \Adjustbox{width=.5\width}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - 将框的宽度设置为当前行宽度的一半。

   - **给文本加框**：
     ```latex
     \Adjustbox{frame}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - 在文本周围添加一个框。

   - **旋转文本**：
     ```latex
     \Adjustbox{angle=90}{%
         test line \verb+$%^&_}\relax+%
     }
     ```
     - 将内容旋转90度。

5. **文档结束：**
   ```latex
   \end{document}
   ```

### 总结

提供的LaTeX代码演示了如何使用`adjustbox`包创建和使用可调框，包括缩放、加框和旋转内容等各种功能。

有关`adjustbox`包及其功能的更多详细信息，您可以访问其CTAN页面：[https://ctan.org/pkg/adjustbox](https://ctan.org/pkg/adjustbox)。

如果您对代码的任何部分有具体问题或需要进一步澄清的概念，欢迎随时询问！
````
