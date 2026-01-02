# [git-cliff](https://github.com/orhun/git-cliff)

> git-cliff is a highly customizable changelog generator that analyzes Git history using conventional commits and regex-powered parsers to produce formatted changelogs. The tool supports configuration files for tailoring output and integrates well with Rust, Node.js, or Python projects. [perplexity.ai]

> git-cliff 是一个高度可自定义的变更日志生成工具，它通过分析 Git 提交历史，基于约定式提交规范和正则表达式解析器来生成格式化的变更日志。该工具支持通过配置文件灵活定制输出内容，并能够很好地集成到 Rust、Node.js 或 Python 项目中。 [perplexity.ai]

## install

```sh
# Windows 10
scoop install git-cliff
```

## usage

```sh
cd <proj>
git cliff --config detailed
git cliff
git cliff -o
```

## reference

- #document [git-cliff Documentation](https://git-cliff.org/docs/)