# [semesterplanner](https://www.ctan.org/pkg/semesterplanner)

> This package encapsules several useful environments for a printable semester plan. It includes a timetable (which is using the schedule-Package) as well as appointments, deadlines and exams. While creating my own plan I thought that it could come handy for somebody else, so I extracted the code into a LATEX-package. This package requires color, tikz, schedule and fontawesome. Furthermore documents need to be compiled with LuaLaTeX. [ctan.org/pkg/semesterplanner]

> 该包封装了多个用于可打印学期计划的有用环境。它包括一个时间表（使用schedule包）以及约会、截止日期和考试。在创建我自己的计划时，我想这可能对其他人有用，因此我将代码提取到一个LATEX包中。该包需要color、tikz、schedule和fontawesome。此外，文档需要使用LuaLaTeX编译。 [ctan.org/pkg/semesterplanner]

## usage

### example

```tex
\documentclass{article}
\usepackage{semesterplanner}

\begin{document}
\begin{timetable}
  \lecture    {Software\\Engineering} {-}    {\zoom}  {M}
  {08:30-10:00} {\phigh}
  \tutorial   {Numerik I}             {\tbd} {\teams} {M}  {16:15-17:45} {\pmid}
  \officehour {Software\\Engineering} {-}    {\zoom}  {T}
  {08:30-10:00} {\phigh}
  \lecture    {Numerik I}             {-}    {\teams} {T}  {10:15-11:45} {\pmid}
  \meeting    {Tutor Meeting}         {-}    {\teams} {T}
  {14:00-15:00} {\phigh}
  \lecture    {Numerik I}             {-}    {\teams} {Th} {14:15-15:45} {\pmid}
  \tutorial   {MfN I}                 {-}    {\teams} {F}  {10:15-11:45} {}
  \seminar    {Machine Learning}      {-}    {\zoom}  {F}
  {12:15-13:45} {\pmandatory}
\end{timetable}
\end{document}
```
