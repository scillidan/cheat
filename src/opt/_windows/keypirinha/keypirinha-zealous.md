# [Keypirinha-Zealous](https://github.com/bantya/Keypirinha-Zealous)

## config

Keypirinha → Configure Package → Zealous:

```
[main]
# path = "<path_to>/zeal.exe"
docset_path = "<path_to_docsets>"
results = 50
wildcard = no

# Get the `CFBundleIdentifier` value liked `python` from `Document.docset\Contents\Info.plist`.
# If you cannot search, it may be a problem with the document.
[docs]
py = python
gdt = godot

# See https://kapeli.com/docsets#supportedentrytypes
[types]
a = Attribute
c = Class
e = Exception
f = Function
g = Guide
m = Method
s = Section
v = Variable
o = Option
```
