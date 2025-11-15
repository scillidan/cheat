# [xan](https://github.com/medialab/xan)

> xan is a command line tool that can be used to process CSV files directly from the shell.  
> It has been written in Rust to be as fast as possible, use as little memory as possible, and can very easily handle large CSV files (Gigabytes). It leverages a novel SIMD CSV parser and is also able to parallelize some computations (through multithreading) to make some tasks complete as fast as your computer can allow.  
> It can easily preview, filter, slice, aggregate, sort, join CSV files, and exposes a large collection of composable commands that can be chained together to perform a wide variety of typical tasks.  
> xan also offers its own expression language so you can perform complex tasks that cannot be done by relying on the simplest commands. This minimalistic language has been tailored for CSV data and is way faster than evaluating typical dynamically-typed languages such as Python, Lua, JavaScript etc.  
> Note that this tool is originally a fork of BurntSushi's xsv, but has been nearly entirely rewritten at that point, to fit SciencesPo's médialab use-cases, rooted in web data collection and analysis geared towards social sciences (you might think CSV is outdated by now, but read our love letter to the format before judging too quickly).  
> xan therefore goes beyond typical data manipulation and expose utilities related to lexicometry, graph theory and even scraping.  
> Beyond CSV data, xan is able to process a large variety of CSV-adjacent data formats from many different disciplines such as web archival (.cdx) or bioinformatics (.vcf, .gtf, .sam, .bed etc.). xan is also able to convert to & from many data formats such as json, excel files, numpy arrays etc. using xan to and xan from. See this section for more detail.  
> Finally, xan can be used to display CSV files in the terminal, for easy exploration, and can even be used to draw basic data visualisations. [medialab/xan]

> xan是一个命令行工具，可以直接从shell处理CSV文件。  
> 它是用Rust编写的，旨在尽可能快速，占用最少内存，并能轻松处理大型CSV文件（达到千兆字节级别）。它利用了一种新颖的SIMD CSV解析器，并能够通过多线程并行化一些计算，使某些任务能以计算机能够允许的最快速度完成。  
> xan能够轻松预览、筛选、切片、聚合、排序、连接CSV文件，并提供了一大堆可组合的命令，这些命令可以链式组合以执行各种典型任务。  
> xan还提供了自己的表达式语言，使您能够执行一些无法仅依靠最简单命令完成的复杂任务。这种极简的语言专为CSV数据而设计，其速度远快于评估典型的动态类型语言（如Python、Lua、JavaScript等）。  
> 请注意，这个工具最初是BurntSushi的xsv的一个分支，但在那时几乎完全重写，以适应巴黎政治学院（SciencesPo）médialab的使用案例，根植于针对社会科学的网络数据收集和分析（您可能认为CSV现在已经过时，但请在过快判断之前，阅读我们对这种格式的情书）。  
> 因此，xan超越了典型的数据操作，提供与词汇计量学、图论甚至抓取相关的实用工具。  
> 除了CSV数据外，xan还能够处理许多来自不同学科的CSV相邻数据格式，例如Web归档（.cdx）或生物信息学（.vcf、.gtf、.sam、.bed等）。xan还能够通过xan to和xan from在许多数据格式之间进行转换，如JSON、Excel文件、NumPy数组等。有关更多详细信息，请参见这一部分。  
> 最后，xan可以用于在终端中显示CSV文件，以便于探索，甚至可以用于绘制基本的数据可视化图表。 [medialab/xan]

## install

```sh
# Arch
sudo pacman -S xan
# Windows 10
scoop install xan
```

## help

```md
# 探索与可视化
- [count (c)](https://github.com/medialab/xan/blob/master/docs/cmd/count.md): 统计文件中的行数
- [headers (h)](https://github.com/medialab/xan/blob/master/docs/cmd/headers.md): 显示头部名称
- [view (v)](https://github.com/medialab/xan/blob/master/docs/cmd/view.md): 以人类友好的方式预览 CSV 文件
- [flatten](https://github.com/medialab/xan/blob/master/docs/cmd/flatten.md): 显示文件每一行的扁平化版本
- [hist](https://github.com/medialab/xan/blob/master/docs/cmd/hist.md): 打印以 CSV 文件行作为柱状图的直方图
- [plot](https://github.com/medialab/xan/blob/master/docs/cmd/plot.md): 绘制散点图或折线图
- [heatmap](https://github.com/medialab/xan/blob/master/docs/cmd/heatmap.md): 绘制 CSV 矩阵的热图
- [progress](https://github.com/medialab/xan/blob/master/docs/cmd/progress.md): 在读取 CSV 数据时显示进度条

# 搜索与过滤
- [search](https://github.com/medialab/xan/blob/master/docs/cmd/search.md): 在 CSV 数据中搜索（或替换）模式
- [filter](https://github.com/medialab/xan/blob/master/docs/cmd/filter.md): 基于评估表达式只保留一些 CSV 行
- [head](https://github.com/medialab/xan/blob/master/docs/cmd/head.md): CSV 文件的前几行
- [tail](https://github.com/medialab/xan/blob/master/docs/cmd/tail.md): CSV 文件的最后几行
- [slice](https://github.com/medialab/xan/blob/master/docs/cmd/slice.md): 切片 CSV 文件的行
- [top](https://github.com/medialab/xan/blob/master/docs/cmd/top.md): 根据某一列查找 CSV 文件的顶部行
- [sample](https://github.com/medialab/xan/blob/master/docs/cmd/sample.md): 随机抽样 CSV 数据

# 排序与去重
- [sort](https://github.com/medialab/xan/blob/master/docs/cmd/sort.md): 排序 CSV 数据
- [dedup](https://github.com/medialab/xan/blob/master/docs/cmd/dedup.md): 去重 CSV 文件
- [shuffle](https://github.com/medialab/xan/blob/master/docs/cmd/shuffle.md): 随机打乱 CSV 数据

# 聚合
- [frequency (freq)](https://github.com/medialab/xan/blob/master/docs/cmd/frequency.md): 显示频率表
- [groupby](https://github.com/medialab/xan/blob/master/docs/cmd/groupby.md): 按 CSV 文件的组聚合数据
- [stats](https://github.com/medialab/xan/blob/master/docs/cmd/stats.md): 计算基本统计信息
- [agg](https://github.com/medialab/xan/blob/master/docs/cmd/agg.md): 聚合 CSV 文件中的数据
- [bins](https://github.com/medialab/xan/blob/master/docs/cmd/bins.md): 将数值列划分为多个区间
- [window](https://github.com/medialab/xan/blob/master/docs/cmd/window.md): 计算窗口聚合（累加和、滚动均值、滞后等）

# 合并多个 CSV 文件
- [cat](https://github.com/medialab/xan/blob/master/docs/cmd/cat.md): 按行或列连接
- [join](https://github.com/medialab/xan/blob/master/docs/cmd/join.md): 合并 CSV 文件
- [fuzzy-join](https://github.com/medialab/xan/blob/master/docs/cmd/fuzzy-join.md): 用含有模式（例如正则表达式）的另一个 CSV 文件合并
- [merge](https://github.com/medialab/xan/blob/master/docs/cmd/merge.md): 合并多个相似的已排序 CSV 文件

# 添加、转换、删除及移动列
- [select](https://github.com/medialab/xan/blob/master/docs/cmd/select.md): 从 CSV 文件中选择列
- [drop](https://github.com/medialab/xan/blob/master/docs/cmd/drop.md): 从 CSV 文件中删除列
- [map](https://github.com/medialab/xan/blob/master/docs/cmd/map.md): 通过评估每个 CSV 行的表达式创建新列
- [transform](https://github.com/medialab/xan/blob/master/docs/cmd/transform.md): 通过评估每个 CSV 行的表达式转换列
- [enum](https://github.com/medialab/xan/blob/master/docs/cmd/enum.md): 通过在前面添加索引列来枚举 CSV 文件
- [flatmap](https://github.com/medialab/xan/blob/master/docs/cmd/flatmap.md): 每个 CSV 行评估的表达式返回的每个值生成一行
- [fill](https://github.com/medialab/xan/blob/master/docs/cmd/fill.md): 填充空单元格
- [blank](https://github.com/medialab/xan/blob/master/docs/cmd/blank.md): 将连续相同的单元格值变为空白

# 格式化、转换与重组
- [behead](https://github.com/medialab/xan/blob/master/docs/cmd/behead.md): 从 CSV 文件中删除头部
- [rename](https://github.com/medialab/xan/blob/master/docs/cmd/rename.md): 重命名 CSV 文件的列
- [input](https://github.com/medialab/xan/blob/master/docs/cmd/input.md): 读取格式异常的 CSV 数据
- [fixlengths](https://github.com/medialab/xan/blob/master/docs/cmd/fixlengths.md): 使所有行具有相同长度
- [fmt](https://github.com/medialab/xan/blob/master/docs/cmd/fmt.md): 格式化 CSV 输出（改变字段分隔符）
- [explode](https://github.com/medialab/xan/blob/master/docs/cmd/explode.md): 基于某列分隔符爆炸行
- [implode](https://github.com/medialab/xan/blob/master/docs/cmd/implode.md): 根据分歧列合并连续相同的行
- [from](https://github.com/medialab/xan/blob/master/docs/cmd/from.md): 将多种格式转换为 CSV
- [to](https://github.com/medialab/xan/blob/master/docs/cmd/to.md): 将 CSV 文件转换为多种数据格式
- [scrape](https://github.com/medialab/xan/blob/master/docs/cmd/scrape.md): 将 HTML 抓取为 CSV 数据
- [reverse](https://github.com/medialab/xan/blob/master/docs/cmd/reverse.md): 反转 CSV 数据的行
- [transpose (t)](https://github.com/medialab/xan/blob/master/docs/cmd/transpose.md): 转置 CSV 文件

# 将 CSV 文件拆分为多个部分
- [split](https://github.com/medialab/xan/blob/master/docs/cmd/split.md): 将 CSV 数据拆分为块
- [partition](https://github.com/medialab/xan/blob/master/docs/cmd/partition.md): 根据列值对 CSV 数据进行分组

# 并行化
- [parallel (p)](https://github.com/medialab/xan/blob/master/docs/cmd/parallel.md): 类似于 Map-Reduce 的并行计算

# 生成 CSV 文件
- [range](https://github.com/medialab/xan/blob/master/docs/cmd/range.md): 从数值范围创建 CSV 文件

# 执行副作用
- [eval](https://github.com/medialab/xan/blob/master/docs/cmd/eval.md): 评估/调试单个表达式
- [foreach](https://github.com/medialab/xan/blob/master/docs/cmd/foreach.md): 循环遍历 CSV 文件以执行副作用

# 词法计量与模糊匹配
- [tokenize](https://github.com/medialab/xan/blob/master/docs/cmd/tokenize.md): 对文本列进行分词
- [vocab](https://github.com/medialab/xan/blob/master/docs/cmd/vocab.md): 基于标记化文档构建词汇
- [cluster](https://github.com/medialab/xan/blob/master/docs/cmd/cluster.md): 聚类 CSV 数据以查找近似重复项

# 矩阵与网络相关命令
- [matrix](https://github.com/medialab/xan/blob/master/docs/cmd/matrix.md): 将 CSV 数据转换为矩阵数据
- [network](https://github.com/medialab/xan/blob/master/docs/cmd/network.md): 将 CSV 数据转换为网络数据
```
