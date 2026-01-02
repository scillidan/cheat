# [Miller](https://github.com/johnkerl/miller)

> - Miller is multi-purpose: it's useful for data cleaning, data reduction, statistical reporting, devops, system administration, log-file processing, format conversion, and database-query post-processing.
> - You can use Miller to snarf and munge log-file data, including selecting out relevant substreams, then produce CSV format and load that into all-in-memory/data-frame utilities for further statistical and/or graphical processing.
> - Miller complements data-analysis tools such as R, pandas, etc.: you can use Miller to clean and prepare your data. While you can do basic statistics entirely in Miller, its streaming-data feature and single-pass algorithms enable you to reduce very large data sets.
> - Miller complements SQL databases: you can slice, dice, and reformat data on the client side on its way into or out of a database. You can also reap some of the benefits of databases for quick, setup-free one-off tasks when you just need to query some data in disk files in a hurry.
> - Miller also goes beyond the classic Unix tools by stepping fully into our modern, no-SQL world: its essential record-heterogeneity property allows Miller to operate on data where records with different schema (field names) are interleaved.
> - Miller is streaming: most operations need only a single record in memory at a time, rather than ingesting all input before producing any output. For those operations which require deeper retention (sort, tac, stats1), Miller retains only as much data as needed. This means that whenever functionally possible, you can operate on files which are larger than your system’s available RAM, and you can use Miller in tail -f contexts.
> - Miller is pipe-friendly and interoperates with the Unix toolkit.
> - Miller's I/O formats include tabular pretty-printing, positionally indexed (Unix-toolkit style), CSV, TSV, JSON, JSON Lines, and others.
> - Miller does conversion between formats.
> - Miller's processing is format-aware: e.g. CSV sort and tac keep header lines first.
> - Miller has high-throughput performance on par with the Unix toolkit.
> - Miller is written in portable, modern Go, with zero runtime dependencies. You can download or compile a single binary, scp it to a faraway machine, and expect it to work. [johnkerl/miller]

> - Miller是多用途的：它可用于数据清理、数据减少、统计报告、开发运维、系统管理、日志文件处理、格式转换和数据库查询后处理。
> - 您可以使用米勒来捕获并处理日志文件数据，包括选择相关的子流，然后生成CSV格式并将其加载到所有内存/数据框工具中，以进行进一步的统计和/或图形处理。
> - 米勒与数据分析工具（如R、pandas等）互补：您可以使用米勒来清理和准备您的数据。虽然您可以在米勒中完全进行基本统计，但它的流式数据特性和单遍算法使您能够减少非常大的数据集。
> - 米勒还与SQL数据库互补：您可以在客户端上对数据进行切片、重组和重新格式化，以便数据在进入或离开数据库时进行处理。当您急需快速查询磁盘文件中的数据时，您也可以从数据库中获得一些好处，用于快速、无需设置的一次性任务。
> - 米勒还超越了经典的Unix工具，完全迈入我们的现代无SQL世界：它的基本记录异构性特性允许米勒在记录具有不同架构（字段名称）交错的情况下进行操作。
> - 米勒是流式的：大多数操作每次只需要在内存中保留一个记录，而不是在生成任何输出之前就接收所有输入。对于那些需要更长时间保留的数据操作（排序、反向、统计1），米勒仅保留所需的数据量。这意味着在功能上可行的情况下，您可以操作比系统可用内存更大的文件，并且可以在tail -f环境中使用米勒。
> - 米勒与Unix工具包兼容，它是友好的管道工具。
> - 米勒的输入/输出格式包括表格美化打印、按位置索引（Unix工具包风格）、CSV、TSV、JSON、JSON Lines等。
> - 米勒可以在格式之间进行转换。
> - 米勒的处理是格式感知的：例如，CSV的排序和反向保留头行。
> - 米勒具有与Unix工具包相当的高通量性能。
> - 米勒是用可移植的现代Go语言编写的，没有任何运行时依赖。您可以下载或编译一个单一的二进制文件，将其scp到远程机器上，并期望它正常工作。 [johnkerl/miller]

## install

```sh
# Arch
sudo pacman -S miller
# Windows 10
scoop install miller
```
