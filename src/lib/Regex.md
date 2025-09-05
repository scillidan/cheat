# Regex

## Personal do

```
!\[\]\(https?:\/\/[^)]+\.(jpg|png|webp)\) | `![]()` in Markdown
_[a-zA-Z\s'",;\.\?\!:-]+_									| `_<word>_` in Markdown
```

## reference

- #sheet [RegEX cheatsheet](https://cheatsheets.zip/regex)
- #syntax [Syntax · google/re2 Wiki](https://github.com/google/re2/wiki/Syntax)

## help

```
.     | any character except a newline
*     | 0 or more repetitions
+     | 1 or more repetitions
?     | 0 or 1 repetitions
{m}   | m repetitions
{m,n} | m-n repetitions
[]    | set of characters
[^]   | complementing the set
\d    | decimal digit
\D    | not a decimal digit
\s    | whitespace characters (Tab, Enter)
\S    | not a whitespace characters
\w    | word character ... as well as numbers and the underscore
\W    | not a word character
```
