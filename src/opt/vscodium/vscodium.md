# [VSCodium](https://vscodium.com)

> VSCodium is a community-driven, freely-licensed binary distribution of Microsoft’s editor VS Code.  
> Microsoft’s vscode source code is open source (MIT-licensed), but the product available for download (Visual Studio Code) is licensed under this not-FLOSS license and contains telemetry/tracking.  
> The VSCodium project exists so that you don’t have to download+build from source. This project includes special build scripts that clone Microsoft’s vscode repo, run the build commands, and upload the resulting binaries for you to GitHub releases. These binaries are licensed under the MIT license. Telemetry is disabled. [vscodium.com]

> VSCodium是一个社区驱动的、自由许可的微软编辑器VS Code的二进制分发版。  
> 微微软的vscode源代码是开源的（MIT许可证），但可下载的产品（Visual Studio Code）是根据这种非FLOSS许可证授权的，并包含遥测/追踪。  
> VSCodium项目的存在是为了让你无需从源代码下载+构建。该项目包含特殊的构建脚本，会克隆微软的vscode代码库，运行构建命令，并将生成的二进制文件上传到GitHub发布。这些二进制文件是根据MIT许可证授权的。遥测被禁用。 [vscodium.com]

## install

```sh
## Arch
#yay -S --noconfirm vscodium-bin vscodium-bin-marketplace
# Windows 10
scoop install vscodium
```

## config

VSCodium → Settings → Open Settings (JSON):

```json
// Windows 10
{
    "terminal.integrated.profiles.windows": {
        "Cmder": {
            "path": [
                "${env:windir}\\Sysnative\\cmd.exe",
                "${env:windir}\\System32\\cmd.exe"
            ],
            "args": [
                "/k C:\\Users\\User\\Usr\\Opt\\cmder_mini\\vendor\\init.bat"
            ]
        }
    },
    "terminal.integrated.defaultProfile.windows": "Cmder",
    "terminal.integrated.tabs.enableAnimation": false
}
```

## reference

- #sheet [Visual Studio Code](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)
- [Extensions missing?](https://www.reddit.com/r/vscode/comments/kb0eb5/extensions_missing/)

## cross-reference

- [godot-mcp.md](/bin/godot-mcp.md)
- [mcp_godot_rag.md](/bin/mcp_godot_rag.md)
- [n8n-mcp-server.md](/bin/n8n-mcp-server.md)

## resource

### mark

- #complete [All Autocomplete](https://github.com/atishay/vscode-allautocomplete)
- #complete [Path Intellisense](https://github.com/ChristianKohler/PathIntellisense)
- #converter [indent2tree](https://github.com/takuan423/inent2tree) _takuanporipori.indent2tree_
- #debug [Error Lens](https://github.com/usernamehw/vscode-error-lens)
- #debug [Lua Debug](https://github.com/actboy168/lua-debug)
- #debug [Python Debugger](https://github.com/microsoft/vscode-python-debugger)
- #edit [Better Align](https://github.com/chouzz/vscode-better-align)
- #edit [Better Comments Next](https://github.com/edwinhuish/better-comments-next)
- #edit [Better Folding Plus](https://github.com/AtroxEGO/vscode-better-folding) _AtroxEGO.better-folding-plus_
- #edit [Bracket Select](https://github.com/wangchunsen/vscode-bracket-select)
- #edit [Edit CSV](https://github.com/janisdd/vscode-edit-csv)
- #edit [EditorConfig](https://github.com/editorconfig/editorconfig-vscode)
- #edit [Fold VSCode](https://github.com/leonatkdev/Fold-vscode-extension) _LeonatKrasniqi.foldvscode_
- #edit [Hide Comments](https://github.com/estruyf/vscode-hide-comments)
- #edit [Hungry Delete](https://github.com/Jasonlhy/VSCode-Hungry-Delete)
- #edit [Incrementor Selection](https://github.com/nmsmith22389/vscode-incrementor)
- #edit [Sort Import Lines](https://marketplace.visualstudio.com/items?itemName=NimaKalhor.sort-import-lines)
- #edit [Sort lines](https://github.com/Tyriar/vscode-sort-lines)
- #edit [Text Marker (Numbered)](https://github.com/pit00/vscode-text-marker-numbered) _pit00.text-marker-numbered_
- #edit [Whitespace+](https://github.com/strikekat/whitespace-plus) _davidhouchin.whitespace-plus_
- #file [Epub Reader](https://github.com/weijan-vscode/vscode-epub-viewer) _cweijan.epub-reader_
- #file [Open](https://github.com/sandcastle/vscode-open) _sandcastle.vscode-open_
- #file [vscode-pdf](https://github.com/tomoki1207/vscode-pdfviewer)
- #formatter [Better YAML Formatter](https://github.com/longkai/kubernetes-yaml-formatter) _kennylong.kubernetes-yaml-formatter_
- #formatter [Prettier - Code formatter](https://github.com/prettier/prettier-vscode)
- #gist [GistPad](https://github.com/lostintangent/gistpad) _vsls-contrib.gistfs_
- #git [gitignore](https://github.com/CodeZombieCH/vscode-gitignore.git)
- #latex [LaTeX Fold](https://github.com/CarbonicSoda/vscode-latex-fold) _carbonsoda.latex-fold_
- #latex [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop)
- #latex [LTeX+](https://github.com/ltex-plus/vscode-ltex-plus)
- #llm [Cline](https://github.com/cline/cline)
- #llm [Continue](https://github.com/continuedev/continue)
- #llm [Files2Prompt](https://github.com/Thomas-McKanna/Files2Prompt) _thomas-mckanna.files2Prompt_
- #llm [Mintlify Doc Writer](https://github.com/mintlify/vscode-docs)
- #profile [Snippets Manager](https://github.com/zjffun/vscode-snippets-manager)
- #profile [Syncing](https://github.com/nonoroazoro/vscode-syncing)
- #profile [VSIX Manager](https://github.com/zokugun/vscode-vsix-manager)
- #project [Project Manager](https://github.com/alefragnani/vscode-project-manager)
- #rename [Batch Rename](https://github.com/JannisX11/batch-rename)
- #syntax [AHK++ (AutoHotkey Plus Plus)](https://github.com/mark-wiemer/ahkpp)
- #syntax [Better DockerFile Syntax](https://github.com/jeff-hykin/cpp-textmate-grammer)
- #syntax [Better JSON5](https://github.com/BlueGlassBlock/better-json5)
- #syntax [Better Shell Syntax](https://github.com/jeff-hykin/better-shell-syntax)
- #syntax [Color Highlight](https://github.com/enyancc/vscode-ext-color-highlight)
- #syntax [ENV](https://github.com/IronGeek/vscode-env)
- #syntax [Log File Highlighter](https://github.com/emilast/vscode-logfile-highlighter)
- #syntax [Lua](https://github.com/LuaLS/lua-language-server)
- #syntax [M3U8 / HLS Language Support](https://github.com/wabiloo/vscode-m3u8-language)
- #syntax [Markdown Preview Enhanced](https://github.com/shd101wyy/vscode-markdown-preview-enhanced)
- #syntax [Markdown Preview Mermaid Support](https://github.com/mjbvz/vscode-markdown-mermaid)
- #syntax [Mermaid Markdown Syntax Highlighting](https://github.com/bpruitt-goddard/vscode-mermaid-syntax-highlight)
- #syntax [Mermaid Preview](https://github.com/vstirbu/vscode-mermaid-preview) _vstirbu.vscode-mermaid-preview_
- #syntax [Python](https://github.com/Microsoft/vscode-python)
- #syntax [Rainbow CSV](https://github.com/mechatroner/vscode_rainbow_csv.git)
- #syntax [reStructuredText Syntax highlighting](https://github.com/trond-snekvik/vscode-rst)
- #syntax [Slidev](https://github.com/slidevjs/slidev)
- #syntax [srt](https://github.com/gert7/srtvs)
- #syntax [XML](https://github.com/redhat-developer/vscode-xml)
- #syntax [YAML](https://github.com/redhat-developer/vscode-yaml)
- #theme [Lightless Theme](https://github.com/ferretwithaberet/lightless-theme) _TwoDevs.lightless_
- #theme [Oxocarbon Theme](https://github.com/nyoom-engineering/oxocarbon-vscode) _NyoomEngineering.oxocarbon-vscode_
- #theme [Vanta](https://github.com/orellazri/vanta) _OrelLazri.vanta_
- [Cron Tasks](https://github.com/zokugun/vscode-cron)
- [filesize](https://github.com/mkxml/vscode-filesize)
- [WakaTime](https://github.com/wakatime/vscode-wakatime)

### later

- #edit [Compare Folders](https://github.com/moshfeu/vscode-compare-folders)
- #lsp [Tinymist Typst](https://github.com/Myriad-Dreamin/tinymist)
- #syanx [KiCad Syntax Highlighter](https://github.com/danielmeza/kicad-syntax-vscode) _DanielMeza.kicad-syntax-highlighter_
- #syntax [SQLite3 Editor](https://github.com/yy0931/sqlite3-editor)

### extra

- #frontend [Bootstrap IntelliSense](https://github.com/aviiceena/bootstrap-intellisense) _hossaini.bootstrap-intellisense_
- #frontend [CSS Variable Autocomplete](https://github.com/vunguyentuan/vscode-css-variables)
- #frontend [ESLint](https://github.com/Microsoft/vscode-eslint)
- #frontend [Font Awesome Auto-complete & Preview](https://github.com/Janne252/vscode-fontawesome-auto-complete)
- #frontend [Icon Snippets](https://github.com/mattkenefick/vscode-icon-snippets) _PolymerMallard.icon-snippets_
- #frontend [IntelliSense for CSS class names in HTML](https://github.com/Zignd/HTML-CSS-Class-Completion)
- #frontend [Live Preview](https://github.com/microsoft/vscode-livepreview)
- #frontend [Nextjs snippets](https://github.com/pulkitgangwar/next.js-snippets)
- #frontend [Pretty TypeScript Errors](https://github.com/yoavbls/pretty-ts-errors)
- #frontend [Tailwind CSS IntelliSense](https://github.com/tailwindlabs/tailwindcss-intellisense)
- #frontend [Tauri](https://github.com/tauri-apps/tauri-vscode)

### cache

- #complete [Path Autocomplete](https://github.com/mihai-vlc/path-autocomplete)
- #converter [Data Format Converter](https://marketplace.visualstudio.com/items?itemName=utbah.data-format-converter)
- #database [Database Client JDBC](https://github.com/database-client/jdbc-adapter-server)
- #database [Database Client](https://github.com/cweijan/vscode-database-client)
- #edit [Auto Hide](https://github.com/sirmspencer/vscode-autohide)
- #edit [Bookmarks](https://github.com/alefragnani/vscode-bookmarks)
- #edit [CodeTour](https://github.com/microsoft/codetour)
- #edit [Dash](https://github.com/deerawan/vscode-dash)
- #edit [DupChecker](https://github.com/jianbingfang/vscode-dup-checker)
- #edit [Format in context menus](https://github.com/lacroixdavid1/vscode-format-context-menu)
- #edit [hungry-backspace](https://github.com/eklemen/hungry-backspace)
- #edit [Indent line](https://github.com/sandipchitale/vscode-indent-line)
- #edit [Inline Bookmarks](https://github.com/tintinweb/vscode-inline-bookmarks)
- #edit [Lorem ipsum](https://github.com/Tyriar/vscode-lorem-ipsum)
- #edit [Markdown Table Formatter](https://github.com/fcrespo82/vscode-markdown-table-formatter)
- #edit [MetaGo](https://github.com/metaseed/metaGo)
- #edit [Multiple cursor case preserve](https://github.com/Cardinal90/multi-cursor-case-preserve)
- #edit [Partial Diff](https://github.com/ryu1kn/vscode-partial-diff)
- #edit [Private Snippets](https://github.com/brianuceda/private-snippets)
- #edit [Remove empty lines](https://github.com/usernamehw/vscode-remove-empty-lines)
- #edit [Snippet Composer](https://github.com/Phantasm0009/snippet-composer)
- #edit [Text Power Tools](https://github.com/qcz/vscode-text-power-tools.git)
- #edit [URI Encode/Decode](https://github.com/sryze/vscode-uridecode)
- #edit [会了吧](https://github.com/mqycn/huile8)
- #file [audio-preview](https://github.com/sukumo28/vscode-audio-preview)
- #file [Component Folder Generator](https://marketplace.visualstudio.com/items?itemName=NimaKalhor.component-folder-generator)
- #file [Image Preview](https://github.com/kisstkondoros/gutter-preview)
- #file [MPEG-4 Preview](https://marketplace.visualstudio.com/items?itemName=analytic-signal.preview-mp4)
- #file [Svg Preview](https://github.com/SimonSiefke/vscode-svg-preview)
- #frontend [cdnjs](https://github.com/Jakobud/vscode-cdnjs)
- #frontend [formate: CSS/LESS/SCSS formatter](https://github.com/mblander/formate)
- #frontend [HTML Class Suggestions](https://github.com/andersea/HTMLClassSuggestionsVSCode)
- #frontend [Live Server](https://github.com/ritwickdey/vscode-live-server)
- #frontend [Mithril Emmet](https://github.com/FallenMax/mithril-emmet)
- #gist [Gist Snip](https://github.com/VaibhavAcharya/gist-snip)
- #git [gi](https://github.com/hasit/vscode-gi)
- #git [Git Auto Pull](https://github.com/tapasthakkar/git-auto-pull)
- #git [Git Graph](https://github.com/mhutchie/vscode-git-graph)
- #git [Git History](https://github.com/DonJayamanne/gitHistoryVSCode)
- #git [GitHub Repositories](https://github.com/microsoft/vscode-remote-repositories-github)
- #git [GitLens](https://github.com/gitkraken/vscode-gitlens)
- #github [GitHub Actions](https://github.com/github/vscode-github-actions)
- #github [GitHub Pull Requests](https://github.com/Microsoft/vscode-pull-request-github)
- #gitlab [GitLab Workflow](https://gitlab.com/gitlab-org/gitlab-vscode-extension)
- #icon [Icons](https://github.com/tal7aouy/vscode-icons)
- #icon [Material Theme Icons — Free](https://github.com/material-theme/vsc-material-theme-icons)
- #latex [TexLab](https://github.com/latex-lsp/texlab)
- #latex [vscode2latex](https://github.com/ottokokstein/vscode2latex)
- #linter [Bash IDE](https://github.com/bash-lsp/bash-language-server)
- #linter [Code Spell Checker](https://github.com/streetsidesoftware/vscode-spell-checker)
- #linter [ShellCheck](https://github.com/vscode-shellcheck/vscode-shellcheck)
- #llm [Tabby](https://github.com/TabbyML/tabby)
- #profile [Sync Settings](https://github.com/zokugun/vscode-sync-settings)
- #profile [VSC Export & Import](https://github.com/aslamanver/vsc-export)
- #syntax [AutoHotkey Plus Plus](https://github.com/mark-wiemer-org/ahkpp)
- #syntax [Flash VSCode](https://github.com/dautroc/flash-vscode)
- #syntax [Foam](https://github.com/foambubble/foam)
- #syntax [Godot Files](https://github.com/AlfishSoftware/godot-files-vscode)
- #syntax [godot-tools](https://github.com/godotengine/godot-vscode-plugin)
- #syntax [ink](https://github.com/sequitur/ink-vscode)
- #syntax [LaTeX Utilities](https://github.com/tecosaur/LaTeX-Utilities)
- #syntax [Love2D Support](https://marketplace.visualstudio.com/items?itemName=pixelbyte-studios.pixelbyte-love2d)
- #syntax [Output Colorizer](https://github.com/IBM-Cloud/vscode-log-output-colorizer)
- #syntax [Python Test Explorer for Visual Studio Code](https://github.com/kondratyev-nv/vscode-python-test-adapter)
- #syntax [Ren'Py Language](https://github.com/renpy/vscode-language-renpy)
- #syntax [shadcn/next](https://github.com/nrjdalal/shadcn-ui-snippets)
- #syntax [Shader languages support for VS Code](https://github.com/stef-levesque/vscode-shader)
- #syntax [Subtitles Editor](https://github.com/pepri/subtitles-editor)
- #syntax [XML Toolkit](https://github.com/SAP/xml-tools/tree/master/packages/xml-toolkit)
- #task [Task Explorer](https://github.com/spmeesseman/vscode-taskexplorer)
- #theme [e-ink](https://gitlab.com/eddjrn/vs-code-e-ink-theme)
- #theme [Shimmer Theme](https://github.com/tenianon/shimmer-theme)
- #theme [Tokyo Night Dark Enhanced](https://github.com/Venage5603/Tokyo-Night-Dark-Enhanced)
- #theme [Tokyo Night](https://github.com/tokyo-night/tokyo-night-vscode-theme)
- #theme [Vesper](https://github.com/raunofreiberg/vesper)
- #view [Decondenser](https://github.com/nitkach/decondenser)
- #view [indent-rainbow](https://github.com/oderwat/vscode-indent-rainbow)
- #view [No Scroll](https://github.com/j-scheitler1/No_Scroll)
- #view [Render Line Endings](https://github.com/medo64/render-crlf)
- [Browse Lite](https://github.com/antfu/vscode-browse-lite)
- [Docker](https://github.com/microsoft/vscode-docker)
- [File Utils](https://github.com/sleistner/vscode-fileutils)
- [File Watcher](https://github.com/appulate/vscode-file-watcher)
- [file-sync](https://marketplace.visualstudio.com/items?itemName=tonyptang.file-sync)
- [GitHub Local Actions](https://github.com/SanjulaGanepola/github-local-actions)
- [i18n Ally](https://github.com/lokalise/i18n-ally)
- [MicroPico](https://github.com/paulober/MicroPico)
- [novel-writer](https://github.com/ttrace/vscode-language-japanese-novel)
- [Officew Viewer](https://github.com/cweijan/vscode-office)
- [Open Remote - SSH](https://github.com/jeanp413/open-remote-ssh)
- [Open Remote - WSL](https://github.com/jeanp413/open-remote-wsl)
- [Remote - SSH](https://github.com/Microsoft/vscode-remote-release)
- [RSS Plus](https://github.com/dhso/vscode-rss-plus)
- [SFTP](https://github.com/Natizyskunk/vscode-sftp)
- [Terminal Keeper](https://github.com/nguyenngoclongdev/vs-terminal-keeper)
- [tl;dr pages](https://github.com/bmuskalla/vscode-tldr)
- [URI Grep](https://github.com/mfujita47/VSCode-URI-Grep)
- [VSCode Animalese](https://github.com/ESV-Sweetplum/vscode-animalese)
- [VSCode Archive](https://github.com/tjx666/vscode-archive)
- [vscode-open](https://github.com/robertohuertasm/vscode-open)
- [vscode-pets](https://github.com/tonybaloney/vscode-pets)
- [Wokwi Simulator](https://marketplace.visualstudio.com/items?itemName=Wokwi.wokwi-vscode)
- [Zip Tools](https://github.com/AdamRaichu/vscode-zip-viewer.git)
- [微信小程序开发工具](https://github.com/crazyurus/miniprogram-vscode-extension)
- [腾讯云代码助手 CodeBuddy](https://marketplace.visualstudio.com/items?itemName=Tencent-Cloud.coding-copilot)
