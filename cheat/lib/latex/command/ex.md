````md
In LaTeX, `ex` is a unit of measurement that is relative to the current font size. Specifically, it is defined as the height of the lowercase letter "x" in the current font. This makes it a useful and flexible measure because it adapts to the size and style of the font being used.

### Breakdown:
- **`0.5ex`**: This means half the height of the letter "x" in the selected font. Therefore, when you see a command like:
  ```latex
  \setlength\extrarowheight{.5ex}
  ```
  it sets the extra row height in a table to be equal to half the height of the letter "x". 

This allows you to adjust the layout (like spacing in tables) in a way that feels consistent with the sizes of the text being used, enhancing readability and aesthetics without needing to refer to fixed measurements like points (pt) or millimeters (mm).

### Example Usage
If you had a font size of 10pt, the `ex` unit could vary, but you could imagine it might be around 4pt (depending on the font). Therefore, `0.5ex` in this case would be approximately 2pt tall.

Using relative units like `ex` can make your document layout more flexible and visually appealing, especially if you ever change the font size or style.

### Conclusion
The `ex` unit is useful for fine-tuning spacing and sizes based on the typography of your document, making it a common choice for further customizations beyond absolute measurements.

If you're interested in learning more about measurements in LaTeX, the following link provides additional insights: [Lengths in LaTeX](https://www.overleaf.com/learn/latex/Lengths_in_LaTeX).
````

````md
在 LaTeX 中，`ex` 是一个相对于当前字体大小的长度单位。具体来说，它被定义为当前字体中小写字母“x”的高度。这使得它成为一个既实用又灵活的单位，因为它会根据所使用字体的大小和样式自动调整。

### 细节解析：
- **`0.5ex`**：表示所选字体中小写字母“x”高度的一半。因此，当你看到如下命令时：
  ```latex
  \setlength\extrarowheight{.5ex}
  ```
  它将表格的额外行高设置为小写字母“x”高度的一半。

这样，你可以以一种与文本大小一致的方式调整布局（例如表格间距），从而提升可读性和美观度，而无需使用固定的度量单位如磅（pt）或毫米（mm）。

### 示例用法
假设字体大小为 10pt，`ex` 单位的具体长度会有所不同，但你可以大致认为它约为 4pt（具体依字体而定）。因此，此时 `0.5ex` 约等于 2pt 高。

使用如 `ex` 这类相对单位，可以让你的文档布局更灵活、更具视觉美感，尤其是在你更改字体大小或样式时表现尤为明显。

### 总结
`ex` 单位适用于根据文档排版调整间距和尺寸，是基于字体形态微调的常用选择，比绝对单位更具灵活性。

如果你想进一步了解 LaTeX 中的度量单位，可以参考以下链接，获取更多相关信息：[Lengths in LaTeX](https://www.overleaf.com/learn/latex/Lengths_in_LaTeX)。
````