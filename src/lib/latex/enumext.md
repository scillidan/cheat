# [enumext](https://www.ctan.org/pkg/enumext)

> This package provides enumerated list environments compatible with tagging PDF for creating “simple exercise sheets” along with “multiple choice questions”, storing the “answers” to these in memory using the multicol package. [ctan.org/pkg/enumext]

> 该包提供了与PDF标记兼容的编号列表环境，用于创建“简单练习表”和“多项选择题”，并使用multicol包将这些题目的“答案”存储在内存中。 [ctan.org/pkg/enumext]

## usage

### example

```tex
\usepackage{enumext}
```

```tex
\begin{enumext*}[widest=10,columns=4]
	\item The first
	\item* The second
	\item The third
	\item The fourth
	\item(3)* The fifth item is way too long for this and needs three columns
	\item The sixth
	\item The seventh
	\item(2)[X] The eighth item is way too long for this and needs two columns
	(\the\itemwidth)
	\item The ninth
	\item[Z] The tenth (\the\itemwidth)
\end{enumext*}
```

