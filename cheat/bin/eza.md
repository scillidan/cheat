变量`eza_params`保存了一个包含 eza 命令标准选项的数组：

- --git 启用 Git 集成功能，以显示 Git 状态图标
- --icons 启用文件和目录的图标支持
- --classify 在每个列出的文件后附加一个字符以指示其类型（例如，/ 表示目录）
- --group-directories-first 在列出内容时优先显示目录，再显示文件
- --time-style=long-iso 以长 ISO 格式格式化时间显示
- --group 在列表中将相似的文件分组
- --color-scale 启用文件大小的颜色刻度

|alias|command|description|
|:-|:-|:-|
|ls|eza $eza_params|使用在 eza_params 中指定的标准参数调用 eza|
|l|eza --git-ignore $eza_params|忽略在 .gitignore 中指定的文件|
|ll|eza --all --header --long $eza_params|列出所有文件（包括隐藏文件），并添加标题和长格式输出|
|llm|eza --all --header --long --sort=modified $eza_params|以长格式列出所有文件，并根据修改时间排序|
|la|eza -lbhHigUmuSa|一组特定选项：-l(长格式)、-b(显示每个文件的索引节点编号)、-h(以人类可读的方式显示文件大小)、-H(跟随符号链接)、-i(显示索引节点编号)、-g(长格式，但不显示所有者)、-U(按访问时间排序文件)、-m(以多列格式输出非目录文件)、-S(按文件大小排序)、-a(包括隐藏文件)|
|lx|eza -lbhHigUmuSa@|与 la 类似，但包括 @ 选项以显示是否有扩展属性|
|lt|eza --tree $eza_params|以树状视图显示目录和文件|
|tree|eza --tree $eza_params|重新定义标准 tree 命令|
