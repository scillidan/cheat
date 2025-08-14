# [blowup-ex1.tex](https://github.com/rolfn/blowup/blob/master/blowup-ex1.tex)

This is a LaTeX document that defines a letter-sized page formatted for printing on A4 paper. Let's break down the key components of the code step by step:

- **Document Class Declaration**: 
  ```latex
  \documentclass[letterpaper,twoside]{article}
  ```
  This sets up the document to use the `article` class, specifying that the paper size is letter and enabling double-sided printing.

- **Package Inclusions**:
  ```latex
  \usepackage{array,xcolor}
  ```
  This imports the `array` package for enhanced table features and the `xcolor` package for color manipulation.

- **Background Color**:
  ```latex
  \AddToHook{shipout/background}{%
    \put(0,0){\textcolor{green!30}{\rule[-\paperheight]{\paperwidth}{\paperheight}}}%
  }
  ```
  This defines a hook that places a light green background on the document, covering the entire page using the `\textcolor` command.

- **Default Font and Indentation**:
  ```latex
  \renewcommand\familydefault{\sfdefault}
  \setlength\parindent{0pt}
  ```
  These commands set the default font to sans-serif and remove paragraph indentation.

- **Remove Page Numbers**:
  ```latex
  \pagestyle{empty}
  ```
  This disables the display of page numbers.

- **Using the blowup Package**:
  ```latex
  \usepackage{blowup}
  \blowUp{target=a4,pos=c}
  ```
  The `blowup` package is used here to ensure that the content is scaled appropriately to fit A4 paper, while maintaining its position centered on the page.

- **Document Content**:
  ```latex
  \begin{document}
  \null\vfill
  \huge\centering
  Letter-size document on A4-size paper
  ...
  \end{document}
  ```
  The content begins with adding vertical spacing (`\null\vfill` ensures that the heading is centered on the page). The header text is set to a large size and centered.

- **Table of Sizes**:
  ```latex
  \begin{tabular}{|>{\bfseries}l<{:}r<{\,mm}!{$\times$}r<{\,mm}|} \hline
    ...
  \end{tabular}
  ```
  A tabular environment is defined here, with formatting that makes the first column bold. It lists various paper sizes alongside their dimensions.

- **Page Break**:
  ```latex
  \newpage\null 2nd page\dots
  ```
  This command creates a new page, with a placeholder for more text on the second page.

The document ultimately provides information on the letter-size paper's dimensions when printed on A4 paper, along with a clear layout and design. 

If you have further questions or need specific clarifications about any part, feel free to ask!