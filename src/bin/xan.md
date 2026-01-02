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

## annex

- [medialab_xan.zh.md](https://github.com/scillidan/mark_cheat/blob/main/medialab_xan.zh.md)
