# [SmartZip](https://github.com/vvyoko/SmartZip)

> SmartZip is a software tool designed to extend the capabilities of 7-Zip, focusing on intelligent and automated file compression and decompression. Key features of SmartZip include:  
> - Smart extraction of compressed files, where single files are extracted to the current folder, and multiple files are extracted into a new folder.  
> - Password handling for encrypted archives, including automated attempts with stored passwords and clipboard contents, plus manual password prompts if needed.  
> - Automatic management of passwords, including dynamic sorting and adding newly used passwords.  
> - Post-extraction file processing such as renaming or deleting files based on specific rules.  
> - Support for extracting nested compressed archives with automatic deletion of inner archives after extraction.  
> - Intelligent file opening behavior that opens archives with 7-Zip or presents options to add files to archives.  
> - Smart compression options that compress multiple folders or files efficiently.  
> - Integration with Windows Explorer through right-click context menus, including workarounds for multi-file operations.  
> - Command-line support for various operations like smart extraction, manual encoding extraction, opening with 7-Zip, and compression.  
> - User-friendly GUI for setting preferences, managing passwords, and batch processing.  
> SmartZip is a practical tool for users who frequently work with compressed files, providing convenience through automation, password management, and integration with common workflows.  
> This tool supports a wide range of customizable settings and is suitable for users looking to simplify and enhance their file compression and extraction tasks, especially when dealing with password-protected and nested archives. It is actively updated and includes features that cater to both casual and advanced users.   
> The software is available for download and use primarily on Windows systems and can be controlled both via GUI and command line for flexible usage.   
> In summary, SmartZip is an intelligent 7-Zip extension tool that automates and manages compression and decompression processes with added convenience features like password management, nested archive handling, and file processing after extraction. [perplexity.ai]

> SmartZip是一个软件工具，旨在扩展7-Zip的功能，专注于智能和自动化的文件压缩和解压缩。SmartZip的主要功能包括：  
> - 智能提取压缩文件，将单个文件提取到当前文件夹，将多个文件提取到新的文件夹中。  
> - 针对加密归档的密码处理，包括使用已存储的密码和剪贴板内容的自动尝试，以及在需要时的手动密码提示。  
> - 自动管理密码，包括动态排序和添加新使用的密码。  
> - 解压后文件处理，如根据特定规则重命名或删除文件。  
> - 支持提取嵌套压缩归档，解压后自动删除内部归档。  
> - 智能文件打开行为，将归档文件与7-Zip打开或提供将文件添加到归档的选项。  
> - 智能压缩选项，可以有效地压缩多个文件夹或文件。  
> - 通过右键上下文菜单与Windows资源管理器集成，包括多文件操作的变通方法。  
> - 支持各种操作的命令行，如智能提取、手动编码提取、使用7-Zip打开和压缩。  
> - 用户友好的图形用户界面，用于设置偏好、管理密码和批量处理。  
> SmartZip是一个实用工具，适合经常处理压缩文件的用户，通过自动化、密码管理和与常见工作流程的集成提供便利。  
> 该工具支持广泛的可自定义设置，适合希望简化和增强文件压缩和解压缩任务的用户，尤其是在处理受密码保护和嵌套归档时。它持续更新，包含符合休闲和高级用户需求的功能。  
> 该软件主要可在Windows系统上下载和使用，能够通过GUI和命令行灵活控制。  
> 总之，SmartZip是一个智能的7-Zip扩展工具，它通过增加如密码管理、嵌套归档处理和解压后的文件处理等便利功能，自动化和管理压缩和解压缩过程。[perplexity.ai]

## install

1. Download `SmartZip*.zip` from [SmartZip - Releases](https://github.com/vvyoko/SmartZip/releases).
2. Decompress it to `SmartZip/`.

## Create light.ico form dark.ico

```sh
magick convert dark.ico -channel RGB -negate light.ico
```

## config

1. SmartZip → 自定义 → 图标路径 → `%SmartZipDir%\light.ico`
2. 关联 → 右键菜单 → Select `SmartZip Decompress`, `SmartZip Compress` → 注册

## appdedix

- [smartzip.mp4](https://scillidan.github.io/media_cheat/opt/_windows/smartzip.mp4)
