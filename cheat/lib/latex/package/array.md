````md
In LaTeX, the `array` package is a package that provides enhanced capabilities for creating and customizing arrays and tables. It extends the functionality of the standard array environment in LaTeX and allows for greater flexibility and control over the formatting of tabular data.

### Key Features of the `array` Package:

14. **Custom Column Definitions**: You can define new types of columns in arrays or tables using the `>{}` and `<{}` syntax, which allows you to specify how to format the entries within that column.

15. **Enhanced Alignment Options**: The package offers additional alignment options, such as `m{}` for vertically centered text in a column, and `p{}` for defining a fixed width with text wrapping.

16. **Improved Control Over Spacing**: You can adjust inter-column spacing and modify the default settings for rows and columns to fit your needs.

17. **Multi-line Cells**: It allows for multi-line cells using `\parbox` or other environments.

18. **Math Mode Support**: The `array` package enhances the array and table environments to allow for better support when working with mathematical notations.

### Example Usage:

To use the `array` package in your LaTeX document, include it in the preamble like this:

```latex
\documentclass{article}
\usepackage{array}

\begin{document}

\begin{tabular}{|>{\centering}p{3cm}|>{\raggedleft}p{3cm}|}
    \hline
    Centered Text & Right-aligned Text \\
    \hline
    Sample 1 & Example 1 \\
    Sample 2 & Example 2 \\
    \hline
\end{tabular}

\end{document}
```

In this example, the `array` package is used to create a table with columns that have specific formatting (centered and right-aligned text). The `p{3cm}` column type specifies that the column width is 3 cm, and the text will wrap if it's too long.

### Conclusion

The `array` package is particularly useful for typesetting complex tables and arrays where the default array functionality of LaTeX might be insufficient. It provides additional control and flexibility, making it a valuable tool for LaTeX users working on documents that involve tabular data.
````

````md
在 LaTeX 中，`array` 宏包是一个提供增强功能的宏包，用于创建和自定义数组和表格。它扩展了 LaTeX 标准 array 环境的功能，允许对表格数据的格式进行更灵活和精细的控制。

### `array` 宏包的主要特性：

19. **自定义列定义**：你可以使用 `>{}` 和 `<{}` 语法定义数组或表格中新类型的列，从而指定该列内条目的格式。
20. **增强的对齐选项**：该宏包提供额外的对齐方式，比如 `m{}` 用于列中文本垂直居中，`p{}` 用于定义固定宽度并支持文本换行。
21. **更好的间距控制**：你可以调整列间距，修改行和列的默认设置以满足需要。
22. **多行单元格**：支持使用 `\parbox` 或其他环境实现多行单元格。
23. **数学模式支持**：`array` 宏包改进了 array 和 table 环境，使处理数学符号时支持更好。

### 使用示例：

要在 LaTeX 文档中使用 `array` 宏包，请在导言区添加如下内容：

```latex
\documentclass{article}
\usepackage{array}

\begin{document}

\begin{tabular}{|>{\centering}p{3cm}|>{\raggedleft}p{3cm}|}
    \hline
    居中文本 & 右对齐文本 \\
    \hline
    示例 1 & 范例 1 \\
    示例 2 & 范例 2 \\
    \hline
\end{tabular}

\end{document}
```

在此示例中，`array` 宏包被用来创建一个具有特定格式（居中和右对齐文本）列的表格。`p{3cm}` 列类型指定列宽为 3 厘米，文本过长时会自动换行。

### 总结

`array` 宏包对于排版复杂表格和数组非常有用，因为 LaTeX 默认的 array 功能可能不足以满足需求。它提供了额外的控制和灵活性，是处理表格数据的 LaTeX 用户的宝贵工具。
````