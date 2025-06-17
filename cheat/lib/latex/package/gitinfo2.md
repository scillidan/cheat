---
source: https://github.com/Hightor/gitinfo2
pdf: "[[gitinfo2.pdf]]"
---

## Summary

```md
**gitinfo2**, a LaTeX package by Hightor, allows integration of version control metadata from Git repositories into LaTeX documents. It enables users to automate the inclusion of essential data, like commit history and version numbers, enhancing documentation and publication processes. This tool is particularly useful for researchers and developers who need to keep track of project evolutions in their documents, ensuring they reflect the latest changes accurately.

Tags: `LaTeX`, `git`, `metadata`, `documentation`, `version-control`
```

```md
**gitinfo2** 是 Hightor 开发的一款 LaTeX 包，允许将 Git 仓库中的版本控制元数据集成到 LaTeX 文档中。它使用户能够自动包含重要数据，例如提交历史和版本号，从而增强文档和出版过程的效果。这个工具对于需要在文档中跟踪项目演变的研究人员和开发人员尤为有用，确保他们的文档准确反映最新的变化。

标签：`LaTeX`，`git`，`元数据`，`文档`，`版本控制`
```

## [gitinfo2.tex](https://github.com/Hightor/gitinfo2/blob/CTAN/gitinfo2.tex)

````md
This LaTeX document, `gitinfo2.tex`, is designed to explain the `gitinfo2` package, which is a tool for integrating Git metadata into LaTeX documents. Let's break down the components of this document to better understand its structure and functionality.

### Document Structure Breakdown

1. **Document Class Declaration**:
   ```tex
   \documentclass[a4paper,12pt,twoside,openany]{memoir}
   ```
   This line sets the document class to `memoir`, which is a versatile class providing a wide range of layouts and formatting options. The options set here specify the paper size (A4), font size (12pt), and page layout settings.

2. **Package Inclusions**:
   The document uses several packages; here are a few key ones:
   - `babel`: Manages language-specific typographical conventions (British English in this case).
   - `fontspec`: Allows the use of OpenType fonts and is necessary for XeLaTeX and LuaLaTeX.
   - `gitinfo2`: This package is the main focus of this document, handling Git metadata.
   - `hyperref`: Manages hyperlinks and metadata in the PDF output, such as author and title.

3. **Font settings**:
   ```tex
   \setmainfont[Numbers={Proportional,OldStyle}, Ligatures=TeX]{TeX Gyre Pagella}
   ```
   The `fontspec` package is configured to set the main font and options for numbers and ligatures, allowing for improved typographic consistency.

4. **Custom Commands**:
   A number of custom commands have been declared:
   ```tex
   \newcommand{\git}{\sfit{git}}
   \newcommand*{\emailat}{@}
   ```
   These are shorthand representations for certain frequently used terms or formatting options in the document.

5. **Document Body**:
   The main body starts with:
   ```tex
   \begin{document}
   \frontmatter
   ```
   This section contains the title, author, release notes, table of contents, and chapters explaining the package's functionality.

6. **Chapters and Sections**:
   After the front matter, the document uses various chapters and sections to systematically explain:
   - How the `gitinfo2` package operates.
   - Installation and configuration steps.
   - Usage scenarios and detailed explanations of available metadata commands.

7. **Footnotes and Watermarks**:
   The document includes mechanisms to manage footnotes and watermarks:
   ```tex
   \makepagenote
   \usepackage[mark]{gitinfo2}
   ```
   This ensures that the Git metadata can be shown at important places in the document.

8. **End of Document**:
   ```tex
   \printpagenotes
   \end{document}
   ```
   This line prints any generated footnotes at the end of the document.

### Key Features Explained

- **Metadata Extraction**: 
  The `gitinfo2` package collects Git-specific metadata such as commit hashes, branch names, and author information, which can then be used throughout the document. 

- **Customizing Metadata**: 
  Options such as `local`, `grumpy`, and various watermark options allow the user to customize how the metadata is presented based on the context of usage (e.g., draft documents).

- **Built-in Documentation**: 
  The structure organizes information logically, guiding the user through the necessary steps for setup, usage, and troubleshooting for effective document creation using Git metadata.

### What is `gitinfo2`?

The `gitinfo2` package allows LaTeX authors to seamlessly include version control metadata from Git into their documents. It's particularly useful for projects where it is important to document versioning information clearly and accurately.

For more details, you can read the package documentation at: [CTAN Gitinfo2 Page](https://ctan.org/pkg/gitinfo2).

If you have specific questions or need help with certain parts of this code, feel free to ask!
````

````md
这份 LaTeX 文档 `gitinfo2.tex` 旨在解释 `gitinfo2` 包，这是一个将 Git 元数据集成到 LaTeX 文档中的工具。让我们逐步分析这份文档的组成部分，以便更好地理解其结构和功能。

### 文档结构分解

1. **文档类声明**：
   ```tex
   \documentclass[a4paper,12pt,twoside,openany]{memoir}
   ```
   这一行将文档类设置为 `memoir`，这是一个提供多种布局和格式选项的通用类。这里设置的选项指定了纸张大小（A4）、字体大小（12pt）和页面布局设置。

2. **包的引用**：
   文档使用了几个包；以下是一些关键的包：
   - `babel`：处理特定语言的排版惯例（在本例中使用的是英国英语）。
   - `fontspec`：允许使用 OpenType 字体，并且对于 XeLaTeX 和 LuaLaTeX 是必需的。
   - `gitinfo2`：该包是本文档的主要焦点，用于处理 Git 元数据。
   - `hyperref`：管理 PDF 输出中的超链接和元数据，例如作者和标题。

3. **字体设置**：
   ```tex
   \setmainfont[Numbers={Proportional,OldStyle}, Ligatures=TeX]{TeX Gyre Pagella}
   ```
   `fontspec` 包被配置以设置主字体和数字及连字的选项，从而实现更好的排版一致性。

4. **自定义命令**：
   声明了一些自定义命令：
   ```tex
   \newcommand{\git}{\sfit{git}}
   \newcommand*{\emailat}{@}
   ```
   这些是某些常用术语或格式选项在文档中的简写表示。

5. **文档主体**：
   主体部分以以下内容开始：
   ```tex
   \begin{document}
   \frontmatter
   ```
   这一部分包括标题、作者、发布说明、目录、以及解释包功能的章节。

6. **章节和节**：
   在前言部分之后，文档使用不同的章节和节系统地解释：
   - `gitinfo2` 包是如何工作的。
   - 安装和配置步骤。
   - 使用场景和可用元命令的详细解释。

7. **脚注和水印**：
   文档包含管理脚注和水印的机制：
   ```tex
   \makepagenote
   \usepackage[mark]{gitinfo2}
   ```
   这确保了 Git 元数据可以在文档的重要地方显示。

8. **文档结束**：
   ```tex
   \printpagenotes
   \end{document}
   ```
   这一行在文档末尾打印任何生成的脚注。

### 关键特性解释

- **元数据提取**：
  `gitinfo2` 包收集 Git 特定元数据，例如提交哈希、分支名称和作者信息，这些信息随后可以在文档中使用。

- **元数据定制**：
  选项如 `local`、`grumpy` 以及各种水印选项允许用户根据使用上下文（例如，草稿文档）定制元数据的呈现方式。

- **内置文档**：
  结构逻辑地组织信息，指导用户完成设置、使用和故障排除的必要步骤，以有效创建使用 Git 元数据的文档。

### 什么是 `gitinfo2`？

`gitinfo2` 包允许 LaTeX 作者无缝地将来自 Git 的版本控制元数据纳入其文档中。对于需要清晰和准确地记录版本信息的项目特别有用。

欲获取更多详细信息，您可以查看该包的文档：[CTAN Gitinfo2 页面](https://ctan.org/pkg/gitinfo2)。

如果您有具体问题或需要帮助处理代码的某些部分，请随时询问！
````