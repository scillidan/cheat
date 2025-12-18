# [Q-and-A](https://ctan.org/pkg/q-and-a)

> Q-and-A is a LaTeX document class for you to typeset Q&A-style conversation. It turns simple pure text Q&A dialog into a carefully designed document.  
> Notably, it features two themes, ChatGPT-light and ChatGPT-dark, enabling you to format your Q&A dialog in a way that closely resembles the interface of ChatGPT. [ctan.org/pkg/q-and-a]

> Q-and-A是一个LaTeX文档类，旨在帮助您排版问答式对话。它将简单的纯文本问答对话转换为精心设计的文档。  
> 特别值得注意的是，它具有两种主题，ChatGPT-light和ChatGPT-dark，允许您以接近ChatGPT界面的方式格式化您的问答对话。 [ctan.org/pkg/q-and-a]

## usage

### example

```tex
\documentclass[%11pt,
  numbered answer,
  numbered question,
  % scroll,
]{Q-and-A}
\geometry{paperwidth=12cm, paperheight=8.2cm}

\begin{document}
Q:
  What is `...`?

A:
  A `...` is a `...`. It has the following features:

  [Feature A]
    [*Aspect one] Firstly, ...
    [*Aspect two] Secondly, ...

  [Feature B]
    It also ...

Q:
  Can you provide some examples for `...`?

A:
  Certainly. There are many types of `...`, for example:
    [*] *emphasized*
    [*] **bold**
    [*] ***bold and emphasized***
\end{document}
```
