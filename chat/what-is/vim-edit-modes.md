What's vim edit modes?

```md
Vim, a powerful text editor, operates in several distinct modes that allow users to perform a variety of tasks efficiently. The primary modes in Vim are:

1. **Normal Mode**: 
   - This is the default mode when you open Vim. In Normal mode, you can navigate through the text, manipulate it, and execute commands. You access other modes from Normal mode.

2. **Insert Mode**: 
   - In this mode, you can insert and edit text. You can enter Insert mode by pressing `i` (insert before the cursor), `I` (insert at the beginning of the line), `a` (append after the cursor), `A` (append at the end of the line), `o` (open a new line below), or `O` (open a new line above). To return to Normal mode, press the `Esc` key.

3. **Visual Mode**: 
   - This mode is used for selecting text. You can enter Visual mode by pressing `v` for character-wise selection, `V` for line-wise selection, or `Ctrl+v` for block-wise selection. Once text is selected, you can manipulate it, copy it, or delete it. Return to Normal mode by pressing `Esc`.

4. **Command-Line Mode**: 
   - This mode allows you to enter commands directly, such as saving files, quitting Vim, or finding text. You can enter Command-Line mode by pressing `:` (colon) while in Normal mode. After entering your command, press `Enter` to execute it. 

5. **Replace Mode**: 
   - You can enter Replace mode by pressing `R` (for "replace") while in Normal mode. In this mode, any text you type replaces existing text at the cursor's position. You can also enter Insert mode with `r` to replace a single character.

6. **Select Mode**: 
   - Select mode operates similarly to Visual mode but behaves more like a typical text selection in GUIs. You can enter Select mode by pressing `gh` in Normal mode. To return to Normal mode, press `Esc`.

Each mode has its specific purpose, providing Vim with its unique workflow that enhances text editing and navigation. By mastering these modes, users can edit text with remarkable efficiency and speed.
```

```md
Vim 是一个强大的文本编辑器，具有几种不同的模式，使用户能够高效地执行各种任务。Vim 的主要模式有：

1. **普通模式**：
   - 这是您打开 Vim 时的默认模式。在普通模式下，您可以在文本中导航、对其进行操作并执行命令。您可以从普通模式切换到其他模式。

2. **插入模式**：
   - 在此模式下，您可以插入和编辑文本。您可以通过按 `i`（在光标前插入）、`I`（在行首插入）、`a`（在光标后追加）、`A`（在行尾追加）、`o`（在下面打开新行）或 `O`（在上面打开新行）来进入插入模式。要返回普通模式，请按 `Esc` 键。

3. **视觉模式**：
   - 此模式用于选择文本。您可以通过按 `v` 进行字符选择、`V` 进行行选择，或 `Ctrl+v` 进行块选择来进入视觉模式。一旦选择了文本，您可以对其进行操作、复制或删除。通过按 `Esc` 返回普通模式。

4. **命令行模式**：
   - 此模式允许您直接输入命令，例如保存文件、退出 Vim 或查找文本。您可以在普通模式下按 `:`（冒号）进入命令行模式。在输入命令后，按 `Enter` 执行它。

5. **替换模式**：
   - 您可以通过在普通模式下按 `R`（代表“替换”）进入替换模式。在此模式下，您输入的任何文本会替换光标位置的现有文本。您也可以通过 `r` 进入插入模式，以替换单个字符。

6. **选择模式**：
   - 选择模式的操作方式类似于视觉模式，但更像是在图形用户界面中的典型文本选择。您可以通过在普通模式下按 `gh` 进入选择模式。要返回普通模式，请按 `Esc`。

每种模式都有其特定的用途，使 Vim 形成独特的工作流程，从而增强文本编辑和导航的能力。通过掌握这些模式，用户可以以惊人的效率和速度编辑文本。
```