# [demo.tex](https://github.com/MartinScharrer/adjustbox/blob/main/demo.tex)

> This is a LaTeX document using the `adjustbox` package, which provides various tools for adjusting and manipulating content such as images and text boxes. Here's a step-by-step explanation of each part of the document:
> 
> - **Document Class**: 
>   ```latex
>   \documentclass{article}
>   ```
>   This specifies that you are creating an article document, which is a common class for shorter documents.
> 
> - **Package Inclusion**:
>   ```latex
>   \usepackage{adjustbox}
>   ```
>   The `adjustbox` package is included to provide the functionality to adjust boxes in various ways (scale, frame, etc.).
> 
> - **New Command Definition**:
>   ```latex
>   \newcommand\Adjustbox[1]{%
>       \par
>       \bigskip
>       \noindent
>       {\ttfamily\detokenize{#1}:\ }%
>       \par\smallskip\noindent
>       \adjustbox{#1}%
>   }
>   ```
  > Here, a new command `\Adjustbox` is defined, which takes one parameter (`#1`). This command formats the output by adding vertical space, a label in typewriter font showing the options provided, and then applies `\adjustbox` with the given options.
> 
> - **Document Body**:
>   ```latex
>   \begin{document}
> 
>   \noindent
>   Without keys:\par\noindent
>   \adjustbox{}{%
>       test line \verb+$%^&_}\relax+%
>   }
>   ```
  > The document begins with `\noindent` (to avoid indentation), and then a test line is shown using `\adjustbox` with no keys (which simply displays the line).
> 
> - **Using the Adjustbox**:
>   Various calls to `\Adjustbox` demonstrate different adjustments that can be made:
  > 
>   - **Scaling**:
>     ```latex
>     \Adjustbox{scale=.5}{%
>         test line \verb+$%^&_}\relax+%
>     }
>     ```
>     This scales the content to 50% of its original size.
> 
>   - **Width Adjustments**:
>     ```latex
>     \Adjustbox{width=.5\width}{%
>         ...
>     }
>     ```
>     The width is set to half of the text width defined in the document.
> 
>   - **Reflecting and Framing**:
>     Various options are demonstrated like `reflect` for mirroring content and `frame` for adding borders around the content.
> 
> - **Positioning**:
>   ```latex
>   \Adjustbox{left}{%
>       test line \verb+$%^&_}\relax+ 
>       ...
>   }
>   ```
>   This shows how to align content to the left while including multiple lines.
> 
> - **Advanced Positioning**:
>   ```latex
>   \Adjustbox{angle=90}{%
>       test line \verb+$%^&_}\relax+%
>   }
>   ```
>   This rotates the content by 90 degrees.
> 
> The document concludes with various examples of positioning and adjusting content using the `adjustbox` options, showcasing its versatility in formatting. 
> 
> For more detailed information on this package, you can refer to the official documentation: https://ctan.org/pkg/adjustbox [GPT-4o mini]

这是一个使用 `adjustbox` 包的 LaTeX 文档，该包提供了用于调整和操作内容（如图像和文本框）的各种工具。以下是文档每个部分的逐步说明：

- **文档类**：
  ```latex
  \documentclass{article}
  ```
  这指定您正在创建一个文章文档，这是比较短文档的常见类。

- **包的包含**：
  ```latex
  \usepackage{adjustbox}
  ```
  包含 `adjustbox` 包，以提供以各种方式调整框的功能（缩放、框架等）。

- **新命令定义**：
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
  在这里，定义了一个新命令 `\Adjustbox`，该命令接受一个参数（`#1`）。此命令通过添加垂直空间、显示所提供选项的打字机字体标签，然后应用 `\adjustbox` 与给定的选项来格式化输出。

- **文档主体**：
  ```latex
  \begin{document}

  \noindent
  Without keys:\par\noindent
  \adjustbox{}{%
      test line \verb+$%^&_}\relax+%
  }
  ```
  文档以 `\noindent` 开始（以避免缩进），然后展示了一行测试文本，使用 `\adjustbox` 但没有键（这只是简单地显示该行）。

- **使用 Adjustbox**：
  各种对 `\Adjustbox` 的调用展示了可以进行的不同调整：

  - **缩放**：
    ```latex
    \Adjustbox{scale=.5}{%
        test line \verb+$%^&_}\relax+%
    }
    ```
    这将内容缩放至其原始大小的 50%。

  - **宽度调整**：
    ```latex
    \Adjustbox{width=.5\width}{%
        ...
    }
    ```
    宽度设置为文档中定义的文本宽度的一半。

  - **反射和框架**：
    展示了各种选项，如使用 `reflect` 进行内容镜像以及使用 `frame` 为内容添加边框。

- **定位**：
  ```latex
  \Adjustbox{left}{%
      test line \verb+$%^&_}\relax+ 
      ...
  }
  ```
  这展示了如何将内容左对齐，并且包含多行内容。

- **高级定位**：
  ```latex
  \Adjustbox{angle=90}{%
      test line \verb+$%^&_}\relax+%
  }
  ```
  这将内容旋转 90 度。

文档以使用 `adjustbox` 选项进行各种定位和调整内容的示例结尾，展示了其在格式化方面的多功能性。

有关此包的更多详细信息，您可以参阅官方网站文档：https://ctan.org/pkg/adjustbox [GPT-4o mini]