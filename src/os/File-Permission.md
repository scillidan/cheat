# File Permission

> The output uses characters like r for reading, w for writing, and x for executing files. The
combination of these operations can also be represented by a single number, called octal
notation. We will use the proper number later to change the permissions.  
> Allowed operations             | Number
> :-                             | :-
> Nothing (—)                    | 0
> Execute (–x)                   | 1
> Write (-w-)                    | 2
> Read (r–)                      | 4
> Write and execute (-wx)        | 3
> Read and execute (r-x)         | 5
> Read and write (rw-)           | 6
> Read, write, and execute (rwx) | 7  
> When we put together the proper numbers for the user owner, group owner and other
users, we will arrive at a three digit number, like `400` for `r--------` or `777` for `rwxrwxrwx`. [Petr Stříbný, "Command Line Handbook"]

> 输出使用像r（读取）、w（写入）和x（执行文件）这样的字符。这些操作的组合也可以用一个称为八进制表示法的数字来表示。我们稍后会使用正确的数字来更改权限。  
> 允许的操作 | 数字
> :- | :-
> 无 (—) | 0
> 执行 (–x) | 1
> 写入 (-w-) | 2
> 读取 (r–) | 4
> 写入和执行 (-wx) | 3
> 读取和执行 (r-x) | 5
> 读取和写入 (rw-) | 6
> 读取、写入和执行 (rwx) | 7  
> 当我们将用户拥有者、组拥有者和其他用户的正确数字组合在一起时，最终会得到一个三位数，比如`400`代表`r--------`或者`777`代表`rwxrwxrwx`。 [Petr Stříbný, "Command Line Handbook"]
