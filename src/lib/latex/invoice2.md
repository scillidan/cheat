# [invoice2](https://www.ctan.org/pkg/invoice2)

> Typeset invoices with automatic VAT and calculation of totals. Supports internationalization, invoices are typeset with booktabs for readability. Does not support separate projects per invoice.  
> Can be used as a replacement for invoice in most cases. [ctan.org/pkg/invoice2]

> 自动排版发票，包括增值税的自动计算和总额计算。支持国际化，发票使用booktabs排版以提高可读性。不支持每张发票单独的项目。  
> 在大多数情况下可以作为发票的替代品使用。 [ctan.org/pkg/invoice2]

## usage

### example

```tex
\usepackage{invoice2}
```

```tex
\begin{invoice}[currency-symbol={CHY}, currency-in-header]
\invoicesingleitem{Ignition!}{4087.99}
\invoicesingleitem{The Art of Computer Programming 1--4}{162.99}
\invoicesingleitem{The TeXbook}{55.69}
\end{invoice}
```

