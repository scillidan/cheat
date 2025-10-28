# [Neovim](https://neovim.io)

> Neovim is a Vim-based text editor engineered for extensibility and usability, to encourage new applications and contributions. [neovim.io]

> Neovim是一个基于Vim的文本编辑器，旨在提高可扩展性和可用性，以鼓励新的应用程序和贡献。 [neovim.io]

## install

```sh
# Arch
sudo pacman -S neovim
# Windows 10
scoop insatll neovim
```

### Build from source

[^1] [^2] [^3]

```sh
# Ubuntu 22 ARM
sudo apt-get install ninja-build gettext cmake unzip curl
```

1. Get `Source code` from [Neovim - Releases](https://github.com/neovim/neovim/releases).
2. Decompress it to `neovim/`.

```sh
cd neovim
# rm -r build
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
ln -s ~/neovim/bin/nvim ~/.local/bin/
# rm -rf ~/.local/share/nvim/lazy/
nvim
```

## Personal do

```sh
# Arch
sudo pacman -S \
	ffmpegthumbnailer
yay -S --noconfirm \
	pdftoppm \
	epub-thumbnailer-git \
	wordnet-common
mkdir -p ~/.config/nvim/dictionary
wget ~/.config/nvim/dictionary/word.txt https://raw.githubusercontent.com/dwyl/english-words/refs/heads/master/words.txt
```

```sh
# Windows 10
set "NEOVIM_CONFIG=%LOCALAPPDATA%\nvim"
# set "NEOVIM_DATA=%LOCALAPPDATA%\nvim-data"
del "%NEOVIM_CONFIG%\cheatsheet.txt"
del "%NEOVIM_CONFIG%\init.lua"
rmdir /S /Q "%NEOVIM_CONFIG%\lua"
mklink "%NEOVIM_CONFIG%\cheatsheet.txt" "%DOTFILES_DIR%\.config\nvim\cheatsheet.txt"
mklink "%NEOVIM_CONFIG%\init.lua" "%DOTFILES_DIR%\.config\nvim\init.lua"
mklink /J "%NEOVIM_CONFIG%\lua" "%DOTFILES_DIR%\.config\nvim\lua"
```

## config

### Configure LSP

- [Configuring Language Server Protocol (LSP) in Neovim](https://linovox.com/configuring-language-server-protocol-lsp-in-neovim/)
- [neovim的LSP配置这一块](https://www.bilibili.com/video/BV1iG7rzTEaz)

### Configure CMP

- [How to Install and Use nvim cmp Autocompletion](https://linovox.com/install-and-use-nvim-cmp/)
- [Autocomplete with nvim-cmp](https://www.jonashietala.se/blog/2024/05/26/autocomplete_with_nvim-cmp/)

## Neovim headless service

```admonish
Not recommended. I suspect it once kill my RPI-5's os.
```

On Ubuntu 24 ARM:

```sh
vim ~/.config/systemd/user/nvim-headless.service
```

```
[Unit]
Description=Start Neovim Headless Server

[Service]
ExecStart=nvim --headless --listen 0.0.0.0:1234
Restart=on-failure
User=<username>

[Install]
WantedBy=default.target
```

```sh
systemctl --user daemon-reload
systemctl --user enable --now nvim-headless
```

On Windows10:

```sh
C:\Users\User\Scoop\apps\git\current\usr\bin\ssh.exe <username>@<your_host> -L 1234:0.0.0.0:1234 -- /home/<your_host>/.local/bin/nvim --headless --listen 0.0.0.0:1234
neovide --server <your_host>:1234
```

## reference

- #blog [Neovim configuration on Windows 10](https://jdhao.github.io/2018/11/15/neovim_configuration_windows/)
- #document [Neovim - Guide to using Lua in Nvim](https://neovim.io/doc/user/lua-guide.html)
- #post [Nvim warning](https://github.com/LunarWatcher/auto-pairs#nvim-warning)
- #post [Why you switched from Neovim to Vim?](https://www.reddit.com/r/vim/comments/16cdbyd/why_you_switched_from_neovim_to_vim/)
- #sheet [Paul Gorman's Vim Cheatsheet](https://paulgorman.org/technical/vim.html)
- #video [优化neovim启动速度](https://www.bilibili.com/video/BV1ohWqeSETr)
- #video [重写neovim配置，新的开始](https://www.bilibili.com/video/BV1UHWoetEz3)
- [Copy all the lines to clipboard](https://ctan.org/tex-archive/macros/latex/contrib/gitinfo2)
- [How do I change my language in my init.lua? - neovim](https://vi.stackexchange.com/questions/36426/how-do-i-change-my-language-in-my-init-lua-neovim)
- [How to use WSL's bash shell as default terminal of gvim/windows 10?](https://vi.stackexchange.com/questions/16386/how-to-use-wsls-bash-shell-as-default-terminal-of-gvim-windows-10)
- [Only just discovered 'set signcolumn=number', I like it](https://www.reddit.com/r/neovim/comments/neaeej/only_just_discovered_set_signcolumnnumber_i_like/)
- [Why does `ESC` move the cursor back in vim?](https://unix.stackexchange.com/questions/11402/why-does-esc-move-the-cursor-back-in-vim)

## cross-reference

### mark

- [blink-cmp.md](bin/neovim/blink-cmp.md)
- [lazy-nvim.md](bin/neovim/lazy-nvim.md)
- [luasnip.md](bin/neovim/luasnip.md)
- [mason-nvim.md](bin/neovim/mason-nvim.md)
- [nvim-treesitter.md](bin/neovim/nvim-treesitter.md)
- [telescope-nvim.md](bin/neovim/telescope-nvim.md)
- [vanta-nvim.md](/bin/neovim/vanta-nvim.md)

### extra

- [godotdev-nvim.md](bin/neovim/godotdev-nvim.md)
- [nvim-dap.md](bin/neovim/nvim-dap.md)

### cache

- [cmp-lsp-rimels.md](bin/neovim/cmp-lsp-rimels.md)
- [obsidian-nvim.md](bin/neovim/obsidian-nvim.md)
- [packer-nvim.md](bin/neovim/packer-nvim.md)
- [lunarvim.md](/bin/neovim/lunarvim.md)

## resource

### mark

- #cheatsheet [Neovim Tips Plugin](https://github.com/saxon1964/neovim-tips)
- #console [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- #debug [Trouble](https://github.com/folke/trouble.nvim)
- #deveplop [LÖVE 2D](https://github.com/S1M0N38/love2d.nvim)
- #document [devdocs.nvim](https://github.com/maskudo/devdocs.nvim)
- #edit #bookmark [arrow.nvim](https://github.com/otavioschwanck/arrow.nvim)
- #edit #bookmark [bookmarks.nvim](https://github.com/crusj/bookmarks.nvim)
- #edit #escape [Houdini](https://github.com/TheBlob42/houdini.nvim)
- #edit #fold [nvim-origami](https://github.com/chrisgrieser/nvim-origami)
- #edit #move [move-lines.nvim](https://github.com/kobbikobb/move-lines.nvim)
- #edit #navigate [Beacon.nvim](https://github.com/DanilaMihailov/beacon.nvim)
- #edit #navigate [Glance](https://github.com/DNLHC/glance.nvim)
- #edit #navigate [Goto Preview](https://github.com/rmagatti/goto-preview)
- #edit #replace [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim)
- #edit #table [csvview.nvim](https://github.com/hat0uma/csvview.nvim)
- #edit #view [fsread.nvim](https://github.com/rewhile/fsread.nvim)
- #edit #view [tiny-glimmer.nvim](https://github.com/rachartier/tiny-glimmer.nvim)
- #edit #view [Twilight](https://github.com/folke/twilight.nvim)
- #edit #yank [nvim-neoclip.lua](https://github.com/AckslD/nvim-neoclip.lua)
- #edit [auto-save.nvim](https://github.com/Pocco81/auto-save.nvim)
- #edit [flash.nvim](https://github.com/folke/flash.nvim)
- #edit [Hodur](https://github.com/vodchella/hodur.nvim)
- #edit [multiple-cursors.nvim](https://github.com/brenton-leighton/multiple-cursors.nvim)
- #edit [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- #edit [Snipe.nvim](https://github.com/leath-dub/snipe.nvim)
- #edit [tabout.nvim](https://github.com/abecodes/tabout.nvim)
- #edit [time-machine.nvim](https://github.com/y3owk1n/time-machine.nvim)
- #edit [tssorter.nvim](https://github.com/mtrajano/tssorter.nvim)
- #epub [epub.nvim](https://github.com/CrystalDime/epub.nvim)
- #explorer [A Neovim Plugin for yazi](https://github.com/mikavilpas/yazi.nvim)
- #explorer [oil-git-status](https://github.com/refractalize/oil-git-status.nvim)
- #explorer [oil.nvim](https://github.com/stevearc/oil.nvim)
- #font [OpenType Sanitizer](https://github.com/khaledhosny/ots)
- #formatter [conform.nvim](https://github.com/stevearc/conform.nvim)
- #git [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- #help [Nvim Cheat Sheet](https://github.com/Djancyp/cheat-sheet)
- #highlight [colorizer.lua](https://github.com/catgoose/nvim-colorizer.lua)
- #highlight [log-highlight.nvim](https://github.com/fei6409/log-highlight.nvim)
- #key [Which Key](https://github.com/folke/which-key.nvim)
- #latex [bibcite.nvim](https://github.com/Aidavdw/bibcite.nvim)
- #learn [hardtime.nvim](https://github.com/m4xshen/hardtime.nvim)
- #lsp #linter [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- #lsp #server [lsp-setup.nvim](https://github.com/junnplus/lsp-setup.nvim)
- #lsp #type [wezterm-types](https://github.com/justinsgithub/wezterm-types)
- #lsp [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- #lsp [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- #markdown [nvim-mdlink](https://github.com/Nedra1998/nvim-mdlink)
- #markdown [nvim-toc](https://github.com/richardbizik/nvim-toc)
- #mini [mini.align](https://github.com/echasnovski/mini.align)
- #mini [mini.comment](https://github.com/echasnovski/mini.comment)
- #mini [mini.cursorword](https://github.com/echasnovski/mini.cursorword)
- #mini [mini.diff](https://github.com/echasnovski/mini.diff)
- #mini [mini.git](https://github.com/echasnovski/mini-git)
- #mini [mini.icons](https://github.com/echasnovski/mini.icons)
- #mini [mini.move](https://github.com/echasnovski/mini.move)
- #mini [mini.splitjoin](https://github.com/echasnovski/mini.splitjoin)
- #mini [mini.statusline](https://github.com/echasnovski/mini.statusline)
- #mini [mini.surround](https://github.com/echasnovski/mini.surround)
- #mini [mini.trailspace](https://github.com/echasnovski/mini.trailspace)
- #other #dictionary [dict-popup.nvim](https://github.com/Nealium/dict-popup.nvim)
- #other #dictionary [dictd.nvim](https://github.com/carlinigraphy/dictd.nvim)
- #other #translate [translate-shell.vim](https://github.com/echuraev/translate-shell.vim)
- #other #translate [translate.nvim](https://github.com/uga-rosa/translate.nvim)
- #other [feed.nvim](https://github.com/neo451/feed.nvim)
- #other [reverb.nvim](https://github.com/whleucka/reverb.nvim)
- #project [Neovim project manager plugin](https://github.com/coffebar/neovim-project)
- #project [warp.nvim](https://github.com/y3owk1n/warp.nvim)
- #qol #config [neoconf.nvim](https://github.com/folke/neoconf.nvim)
- #qol #session [auto-session](https://github.com/rmagatti/auto-session)
- #qol [mkdir.nvim](https://github.com/jghauser/mkdir.nvim)
- #qol [snacks.nvim](https://github.com/folke/snacks.nvim)
- #setup [lazy.nvim](https://github.com/folke/lazy.nvim)
- #setup [lazydev.nvim](https://github.com/folke/lazydev.nvim)
- #snips [Friendly Snippets](https://github.com/rafamadriz/friendly-snippets)
- #snips [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- #theme [Nightfox](https://github.com/EdenEast/nightfox.nvim)
- #theme [ThemeSwitch](https://github.com/nishu-murmu/ThemeSwitch.nvim)
- #tmux [tmux-navigator.nvim](https://github.com/connordeckers/tmux-navigator.nvim)
- #ui [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- #ui [satellite.nvim](https://github.com/lewis6991/satellite.nvim)
- #window [git-dev.nvim](https://github.com/moyiz/git-dev.nvim)
- #window [Vimade](https://github.com/TaDaa/vimade)
- #window [WinShift.nvim](https://github.com/sindrets/winshift.nvim)
- #workspace [workspaces.nvim](https://github.com/natecraddock/workspaces.nvim)

### later

- #buffer [buffer-sticks.nvim](https://github.com/ahkohd/buffer-sticks.nvim)
- #learn [spamguard.nvim](https://github.com/timseriakov/spamguard.nvim)
- #git [csc.nvim](https://github.com/yus-works/csc.nvim)
- [filler-begone.nvim](https://github.com/Saghen/filler-begone.nvim)
- [LightSwitch.nvim](https://github.com/markgandolfo/lightswitch.nvim)

### cache

- #bookmark [bookmarks.nvim](https://github.com/heilgar/bookmarks.nvim)
- #buffer [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- #buffer [Buffon](https://github.com/francescarpi/buffon.nvim)
- #buffer [Githubify](https://github.com/manugoyal/githubify)
- #buffer [no-neck-pain.nvim](https://github.com/shortcuts/no-neck-pain.nvim)
- #cmp [compl.nvim](https://github.com/brianaung/compl.nvim)
- #cmp [ecolog.nvim](https://github.com/ssstba/ecolog.nvim)
- #cmp [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- #cmp [vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion)
- #comment [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- #comment [ts-comments.nvim](https://github.com/folke/ts-comments.nvim)
- #comment [vim-hidecomments](https://github.com/wangfanstar/vim-hidecomments)
- #config [Neovim minimal LaTeX configuration](https://github.com/WhiteBlackGoose/nvim-latex-preconfig)
- #console [Better Term](https://github.com/CRAG666/betterTerm.nvim)
- #console [Lua console](https://github.com/YaroSpace/lua-console.nvim)
- #console [tmux-compile.nvim](https://github.com/karshPrime/tmux-compile.nvim)
- #console [trun.nvim](https://github.com/Veirt/trun.nvim)
- #database [mssql.nvim](https://github.com/Kurren123/mssql.nvim)
- #database [Dbout.nvim](https://github.com/zongben/dbout.nvim)
- #deveplop [BuildScript Plugin](https://github.com/kosekidev/build-script)
- #deveplop [commons.nvim](https://github.com/linrongbin16/commons.nvim)
- #deveplop [DepSync](https://github.com/robertazzopardi/depsync.nvim)
- #deveplop [Lazy local patcher](https://github.com/polirritmico/lazy-local-patcher.nvim)
- #deveplop [nvim-px-to-rem](https://github.com/jsongerber/nvim-px-to-rem)
- #deveplop [pathlib.nvim](https://github.com/pysan3/pathlib.nvim)
- #deveplop [py-requirements.nvim](https://github.com/MeanderingProgrammer/py-requirements.nvim)
- #deveplop [swenv.nvim](https://github.com/AckslD/swenv.nvim)
- #deveplop [templatory.nvim](https://github.com/dheerajshenoy/templatory.nvim)
- #docset [dash-docs.nvim](https://github.com/sei40kr/dash-docs.nvim)
- #docset [zeal-lynx-cli](https://github.com/Sanix-Darker/zeal-lynx-cli)
- #document [Zeavim](https://github.com/KabbAmine/zeavim.vim)
- #edit #bookmark [A minimal bookmarks plugin for Neovim](https://github.com/yuriescl/minimal-bookmarks.nvim)
- #edit #bookmark [fusen.nvim](https://github.com/walkersumida/fusen.nvim)
- #edit #bookmark [Lspmark.nvim](https://github.com/tristone13th/lspmark.nvim)
- #edit #bookmark [marker-groups.nvim](https://github.com/jameswolensky/marker-groups.nvim)
- #edit #bookmark [spelunk.nvim](https://github.com/EvWilson/spelunk.nvim)
- #edit #comment [nvim-hemingway](https://github.com/javiorfo/nvim-hemingway)
- #edit #csv [Decisive.nvim](https://github.com/emmanueltouzery/decisive.nvim)
- #edit #fold [foldtext.nvim](https://github.com/OXY2DEV/foldtext.nvim)
- #edit #fold [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- #edit #ime [cmp-flypy.nvim](https://github.com/wasden/cmp-flypy.nvim)
- #edit #ime [fcitx5.nvim](https://github.com/tonyfettes/fcitx5.nvim)
- #edit #ime [jam.nvim](https://github.com/uga-rosa/jam.nvim)
- #edit #license [header.nvim](https://github.com/attilarepka/header.nvim)
- #edit #mode [true-zen.nvim](https://github.com/Pocco81/true-zen.nvim)
- #edit #mode [zen-mode.nvim](https://github.com/folke/zen-mode.nvim)
- #edit #move [Treewalker.nvim](https://github.com/aaronik/Treewalker.nvim)
- #edit #wrap [Vim-ArgWrap](https://git.foosoft.net/alex/vim-argwrap)
- #edit [align.nvim](https://github.com/jokesper/align.nvim)
- #edit [clippy.nvim](https://github.com/petersid2022/clippy.nvim)
- #edit [Coerce](https://github.com/gregorias/coerce.nvim)
- #edit [commentless.nvim](https://github.com/soemre/commentless.nvim)
- #edit [dial.nvim](https://github.com/monaqa/dial.nvim)
- #edit [Emojify.nvim](https://github.com/ronisbr/emojify.nvim)
- #edit [format.nvim](https://github.com/wsdjeg/format.nvim)
- #edit [gyoza.vim](https://github.com/mityu/vim-gyoza)
- #edit [im-switch.nvim](https://github.com/drop-stones/im-switch.nvim)
- #edit [img-clip.nvim](https://github.com/hakonharnes/img-clip.nvim)
- #edit [in-and-out.nvim](https://github.com/ysmb-wtsg/in-and-out.nvim)
- #edit [interlaced.nvim](https://github.com/tanloong/interlaced.nvim)
- #edit [join.nvim](https://github.com/jakeru/join.nvim)
- #edit [jumper.nvim](https://github.com/homerours/jumper.nvim)
- #edit [keepcursor.nvim](https://github.com/rlychrisg/keepcursor.nvim)
- #edit [leap.nvim](https://github.com/ggandor/leap.nvim)
- #edit [Multicursors.nvim](https://github.com/smoka7/multicursors.nvim)
- #edit [namu.nvim](https://github.com/bassamsdata/namu.nvim)
- #edit [navigate-note.nvim](https://github.com/you-n-g/navigate-note.nvim)
- #edit [navimark.nvim](https://github.com/zongben/navimark.nvim)
- #edit [Neoscroll](https://github.com/karb94/neoscroll.nvim)
- #edit [Neovim GhostText](https://github.com/wallpants/ghost-text.nvim)
- #edit [numb.nvim](https://github.com/nacro90/numb.nvim)
- #edit [nvim-surround](https://github.com/kylechui/nvim-surround)
- #edit [nvumi](https://github.com/josephburgess/nvumi)
- #edit [Pinmd](https://github.com/mistgc/pinmd.nvim)
- #edit [referencer.nvim](https://github.com/romus204/referencer.nvim)
- #edit [Refjump](https://github.com/mawkler/refjump.nvim)
- #edit [remember.nvim](https://github.com/vladdoster/remember.nvim)
- #edit [rip-substitute](https://github.com/chrisgrieser/nvim-rip-substitute)
- #edit [scalpel.nvim](https://github.com/wassimk/scalpel.nvim)
- #edit [Smooth Cursor](https://github.com/gen740/SmoothCursor.nvim)
- #edit [sort.nvim](https://github.com/sQVe/sort.nvim)
- #edit [Streamer Mode](https://github.com/Kolkhis/streamer-mode.nvim)
- #edit [SuEdit](https://github.com/Grafcube/suedit.nvim)
- #edit [swap.nvim](https://github.com/tigion/swap.nvim)
- #edit [text-case.nvim](https://github.com/johmsalas/text-case.nvim)
- #edit [truncateline.nvim](https://github.com/rlychrisg/truncateline.nvim)
- #edit [vim-sandwich](https://github.com/machakann/vim-sandwich)
- #edit [VimSaver](https://github.com/kopsha/vim-saver)
- #edit [visimatch.nvim](https://github.com/wurli/visimatch.nvim)
- #explorer [browser-bookmarks.nvim](https://github.com/dhruvmanila/browser-bookmarks.nvim)
- #explorer [Command-T](https://github.com/wincent/command-t)
- #explorer [dired.nvim](https://github.com/X3eRo0/dired.nvim)
- #explorer [fm-nvim](https://github.com/is0n/fm-nvim)
- #explorer [Fyler.nvim](https://github.com/A7Lavinraj/fyler.nvim)
- #explorer [Grapple.nvim](https://github.com/cbochs/grapple.nvim)
- #explorer [Neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- #explorer [netrw.nvim](https://github.com/prichrd/netrw.nvim)
- #explorer [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- #explorer [open-browser.vim](https://github.com/tyru/open-browser.vim)
- #explorer [ranger.nvim](https://github.com/kelly-lin/ranger.nvim)
- #explorer [Rnvimr](https://github.com/kevinhwang91/rnvimr)
- #explorer [sidebar.nvim](https://github.com/sidebar-nvim/sidebar.nvim)
- #explorer [Triptych.nvim](https://github.com/simonmclean/triptych.nvim)
- #explorer [vfiler.vim](https://github.com/obaland/vfiler.vim)
- #explorer [vim-sidebar-manager](https://github.com/brglng/vim-sidebar-manager)
- #font [otf2ttf](https://github.com/awesometoolbox/otf2ttf)
- #formatter [stylua-nvim](https://github.com/ckipp01/stylua-nvim)
- #git #commit [aicommits.nvim](https://github.com/404pilo/aicommits.nvim)
- #git #diff [axkirillov/unified.nvim](https://github.com/axkirillov/unified.nvim)
- #git #issue [Octo.nvim](https://github.com/pwntester/octo.nvim)
- #git #issue [Git Needy](https://github.com/cd-4/git-needy.nvim)
- #git [conflict-juggler.nvim](https://github.com/pv-hernandez/conflict-juggler.nvim)
- #git [Diffview.nvim](https://github.com/sindrets/diffview.nvim)
- #git [gitblame.nvim](https://github.com/ring0-rootkit/gitblame.nvim)
- #git [gitpad.nvim](https://github.com/yujinyuz/gitpad.nvim)
- #git [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
- #git [nvim-git-fixer](https://github.com/LhKipp/nvim-git-fixer)
- #gui [Goneovim](https://github.com/akiyosi/goneovim)
- #gui [roarie-commands](https://github.com/lalbornoz/roarie-commands.vim)
- #highlight [colorful-menu.nvim](https://github.com/xzbdmw/colorful-menu.nvim)
- #highlight [Modicator.nvim](https://github.com/mawkler/modicator.nvim)
- #highlight [multicolumn.nvim](https://github.com/fmbarina/multicolumn.nvim)
- #highlight [NeoColumn.nvim](https://github.com/ecthelionvi/NeoColumn.nvim)
- #highlight [nvim-cursorline](https://github.com/ya2s/nvim-cursorline)
- #highlight [Paint](https://github.com/folke/paint.nvim)
- #highlight [Rainbow delimiters for Neovim](https://gitlab.com/HiPhish/rainbow-delimiters.nvim)
- #highlight [STCursorword](https://github.com/sontungexpt/stcursorword)
- #highlight [Syntax Highlighted Cursor](https://github.com/ukyouz/syntax-highlighted-cursor.nvim)
- #highlight [whitespace.nvim](https://github.com/johnfrankmorgan/whitespace.nvim)
- #history [Memento.nvim](https://github.com/gaborvecsei/memento.nvim)
- #ime [rime.nvim](https://github.com/Freed-Wu/rime.nvim)
- #key [commander.nvim](https://github.com/FeiyouG/commander.nvim)
- #key [keymap-stats.nvim](https://github.com/gmatheu/keymap-stats.nvim)
- #key [legendary.nvim](https://github.com/mrjones2014/legendary.nvim)
- #key [Mapper](https://github.com/gregorias/nvim-mapper)
- #latex [LuaSnip-LaTeX-Snippets](https://github.com/evesdropper/luasnip-latex-snippets.nvim)
- #latex [nvim-cmp Lua LaTeX Symbols](https://github.com/amarz45/nvim-cmp-lua-latex-symbols)
- #latex [PDF Preview](https://github.com/franco-ruggeri/pdf-preview.nvim)
- #latex [rnoweb-nvim](https://github.com/bamonroe/rnoweb-nvim)
- #latex [VimTeX](https://github.com/lervag/vimtex)
- #license [header.nvim](https://github.com/attilarepka/header.nvim)
- #llm [Aider Plugin for Neovim](https://github.com/joshuavial/aider.nvim)
- #llm [arena.nvim](https://github.com/dzfrias/arena.nvim)
- #llm [avante.nvim](https://github.com/yetone/avante.nvim)
- #llm [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim)
- #llm [CodeCompanion](https://github.com/olimorris/codecompanion.nvim)
- #llm [llm.nvim](https://github.com/Kurama622/llm.nvim)
- #llm [nvim-aider](https://github.com/GeorgesAlkhouri/nvim-aider)
- #llm [ollama.nvim](https://github.com/nomnivore/ollama.nvim)
- #llm [parrot.nvim](https://github.com/frankroeder/parrot.nvim)
- #llm [Smear cursor for Neovim](https://github.com/sphamba/smear-cursor.nvim)
- #llm [yarepl.nvim](https://github.com/milanglacier/yarepl.nvim)
- #lsp #deveplop [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)
- #lsp [dev-tools.nvim](https://github.com/yarospace/dev-tools.nvim)
- #lsp [Harper](https://github.com/elijah-potter/harper)
- #lsp [lazy-lsp.nvim](https://github.com/dundalek/lazy-lsp.nvim)
- #lsp [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- #lsp [lspkind-nvim](https://github.com/onsails/lspkind.nvim)
- #lsp [rime-ls](https://github.com/wlh320/rime-ls)
- #markdown #table [A markdown table editor](https://github.com/SCJangra/table-nvim)
- #markdown [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)
- #markdown [kiwi.nvim](https://github.com/serenevoid/kiwi.nvim)
- #markdown [markdown-toc](https://github.com/ChuufMaster/markdown-toc)
- #markdown [markdown-plus.nvim](https://github.com/YousefHadder/markdown-plus.nvim)
- #markdown [markdown.nvim](https://github.com/MeanderingProgrammer/markdown.nvim)
- #markdown [markdowny.nvim](https://github.com/antonk52/markdowny.nvim)
- #markdown [marknav.nvim](https://github.com/daenikon/marknav.nvim)
- #markdown [md-table-tidy.nvim](https://github.com/timantipov/md-table-tidy.nvim)
- #markdown [mkdnflow.nvim](https://github.com/jakewvincent/mkdnflow.nvim)
- #markdown [peek.nvim](https://github.com/toppair/peek.nvim)
- #move [eyeliner.nvim](https://github.com/jinh0/eyeliner.nvim)
- #mpv #youtube [mpv.nvim](https://github.com/tamton-aquib/mpv.nvim)
- #mpv [riff.nvim](https://github.com/Rits1272/riff.nvim)
- #navigate [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- #navigate [nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
- #opt #tmux [tmux-navigator.nvim](https://github.com/connordeckers/tmux-navigator.nvim)
- #opt [dps-joplin](https://github.com/tomato3713/dps-joplin)
- #opt [plugin_neovim](https://github.com/pieces-app/plugin_neovim)
- #other #dictionary [dict.nvim](https://github.com/jalvesaq/dict.nvim)
- #other #dictionary [dictionary.nvim](https://github.com/chrscchrn/dictionary.nvim)
- #other #hex [hexer.nvim](https://github.com/theKnightsOfRohan/hexer.nvim)
- #other #macro [NeoComposer.nvim](https://github.com/ecthelionvi/NeoComposer.nvim)
- #other #note [Memo.nvim](https://github.com/KIMGEONUNG/memo.nvim)
- #other #sftp [Transmit.nvim](https://github.com/DevDec/transmit.nvim)
- #other #translate [dps-translate-vim](https://github.com/Omochice/dps-translate-vim)
- #other #translate [Trans.nvim](https://github.com/JuanZoran/Trans.nvim)
- #other #watch [funzzy.nvim](https://github.com/cristianoliveira/funzzy.nvim)
- #other [cellular-automaton.nvim](https://github.com/Eandrju/cellular-automaton.nvim)
- #other [color-picker.nvim](https://github.com/ziontee113/color-picker.nvim)
- #other [decipher.nvim](https://github.com/MisanthropicBit/decipher.nvim)
- #other [dexercism.vim](https://github.com/pyonk/dexercism.vim)
- #other [Neovim Simple Note Plugin](https://github.com/rguruprakash/simple-note.nvim)
- #other [neovimpv](https://github.com/queue-miscreant/neovimpv)
- #other [NVIM-RSS](https://github.com/EMPAT94/nvim-rss)
- #other [sqlpilot.nvim](https://github.com/rsdot/sqlpilot.nvim)
- #other [vim-todo](https://github.com/wsdjeg/vim-todo)
- #pdf [nougat.nvim](https://github.com/facebookresearch/nougat)
- #pdf [nvim-pandoc-pdf](https://github.com/kaymmm/nvim-pandoc-pdf)
- #pdf [nvim-texis](https://github.com/jhofscheier/nvim-texis)
- #preset [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- #preset [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- #preset [Neorg](https://github.com/nvim-neorg/neorg)
- #preset [NvChad](https://github.com/NvChad/NvChad)
- #preset [oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim)
- #project [project.nvim](https://github.com/DrKJeff16/project.nvim)
- #run [code_runner.vim](https://github.com/MajorZiploc/code_runner.vim)
- #run [codi.vim](https://github.com/metakirby5/codi.vim)
- #run [compal.nvim](https://github.com/sashetophizika/compal.nvim)
- #run [flow.nvim](https://github.com/arjunmahishi/flow.nvim)
- #run [LitREPL](https://github.com/sergei-mironov/litrepl)
- #run [Molten](https://github.com/benlubas/molten-nvim)
- #run [Notebook Navigator](https://github.com/GCBallesteros/NotebookNavigator.nvim)
- #run [nvim-fuel](https://github.com/javiorfo/nvim-fuel)
- #run [runner.nvim](https://github.com/MarcHamamji/runner.nvim)
- #run [sendline](https://github.com/bugsbugsbux/sendline)
- #run [Slime for neovim](https://github.com/Mackrics/neoslime)
- #run [tshunkyPy](https://github.com/jeff-dh/tshunkyPy.nvim)
- #screenshot [code-shot.nvim](https://github.com/niuiic/code-shot.nvim)
- #screenshot [codesnap](https://github.com/mistricky/codesnap.nvim)
- #screenshot [Freeze Neovim Plugin](https://github.com/AlejandroSuero/freeze-code.nvim)
- #screenshot [freeze.nvim](https://github.com/ndom91/freeze.nvim)
- #search [bible-verse.nvim](https://github.com/anthony-halim/bible-verse.nvim)
- #search [fzf-nerdfont.nvim](https://github.com/stephansama/fzf-nerdfont.nvim)
- #search [fzfx.nvim](https://github.com/linrongbin16/fzfx.nvim)
- #session [Persistence](https://github.com/folke/persistence.nvim)
- #session [Session Lens](https://github.com/rmagatti/session-lens)
- #session [sessions.nvim](https://github.com/natecraddock/sessions.nvim)
- #setup [activate.nvim](https://github.com/roobert/activate.nvim)
- #setup [rocks.nvim](https://github.com/nvim-neorocks/rocks.nvim)
- #setup [vim-plug](https://github.com/junegunn/vim-plug)
- #ssh [Remote SSH](https://github.com/inhesrom/remote-ssh.nvim)
- #statusline [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- #synax [dpp.vim](https://github.com/Shougo/dpp.vim)
- #synax [vim-detect-indent](https://github.com/kg8m/vim-detect-indent)
- #syntax [nvim-lilypond-suite](https://github.com/martineausimon/nvim-lilypond-suite)
- #syntax [toggle-quotes.nvim](https://github.com/paul-louyot/toggle-quotes.nvim)
- #syntax [vim-typo](https://github.com/tani/vim-typo)
- #syntax [zk-nvim](https://github.com/mickael-menu/zk-nvim)
- #tabline [Minimal-tabline.nvim](https://github.com/koenverburg/minimal-tabline.nvim)
- #task [Macrothis.nvim](https://github.com/desdic/macrothis.nvim)
- #task [overseer.nvim](https://github.com/stevearc/overseer.nvim)
- #terminal [ErgoTerm](https://github.com/waiting-for-dev/ergoterm.nvim)
- #terminal [floatty.nvim](https://github.com/ingur/floatty.nvim)
- #terminal [Multiterm.nvim](https://github.com/imranZERO/multiterm.nvim)
- #theme [FkThemes.nvim](https://github.com/flashcodes-themayankjha/fkthemes.nvim)
- #theme [gruvbox.nvim](https://gitlab.com/motaz-shokry/gruvbox.nvim)
- #theme [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- #theme [ThemeHub.nvim](https://github.com/Erl-koenig/theme-hub.nvim)
- #theme [TypeDark](https://github.com/BonnyAD9/TypeDark)
- #todo [todotxt.nvim](https://github.com/phrmendes/todotxt.nvim)
- #ui #statusline [battery.nvim](https://github.com/justinhj/battery.nvim)
- #ui #statusline [lsp-progress.nvim](https://github.com/linrongbin16/lsp-progress.nvim)
- #ui #statusline [slimline.nvim](https://github.com/sschleemilch/slimline.nvim)
- #ui #statusline [yasl.nvim](https://github.com/brianaung/yasl.nvim)
- #theme #dark [Gruvbox Flat](https://github.com/eddyekofo95/gruvbox-flat.nvim)
- #theme #dark [Iceberg](https://github.com/cocopon/iceberg.vim)
- #theme #dark [lackluster](https://github.com/slugbyte/lackluster.nvim)
- #theme [Last Color](https://github.com/raddari/last-color.nvim)
- #theme #dark [Min Theme](https://github.com/datsfilipe/min-theme.nvim)
- #theme [Neon](https://github.com/rafamadriz/neon)
- #theme [newpaper.nvim](https://github.com/yorik1985/newpaper.nvim)
- #theme [northernlights.vim](https://github.com/m-gail/northernlights.vim)
- #theme [Styler](https://github.com/folke/styler.nvim)
- #theme [Themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
- #theme [Themify](https://github.com/LmanTW/themify.nvim)
- #theme [Tokyo Night](https://github.com/folke/tokyonight.nvim)
- #ui [Noice](https://github.com/folke/noice.nvim)
- #ui [nvim-notify](https://github.com/rcarriga/nvim-notify)
- #ui [tiny-devicons-auto-colors.nvim](https://github.com/rachartier/tiny-devicons-auto-colors.nvim)
- #ui [visual-whitespace.nvim](https://github.com/mcauley-penney/visual-whitespace.nvim)
- #uml [nvim-soil](https://github.com/chaosystema/nvim-soil)
- #version [Bob](https://github.com/MordechaiHadad/bob)
- #version [nvs (Neovim Version Switcher)](https://github.com/y3owk1n/nvs)
- #view [Markdown to PDF](https://github.com/arminveres/md-pdf.nvim)
- #winbar [barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
- #winbar [bars.nvim](https://github.com/OXY2DEV/bars.nvim)
- #winbar [do.nvim](https://github.com/nocksock/do.nvim)
- #winbar [incline.nvim](https://github.com/b0o/incline.nvim)
- #window [tint.nvim](https://github.com/levouh/tint.nvim)
- #window [win-mover.nvim](https://github.com/ycdzj/win-mover.nvim)
- #window [winmove.nvim](https://github.com/MisanthropicBit/winmove.nvim)
- #workdir [rooter.nvim](https://github.com/wsdjeg/rooter.nvim)
- #yank [karen-yank](https://github.com/tenxsoydev/karen-yank.nvim)
- #yank [YankBank](https://github.com/ptdewey/yankbank-nvim)
- #yank [yanklines.nvim](https://github.com/obergodmar/yanklines.nvim)
- #yank [yanklock.nvim](https://github.com/daltongd/yanklock.nvim)
- [databox.nvim](https://github.com/chrisgve/databox.nvim)
- [famous-quotes.nvim](https://github.com/mahyarmirrashed/famous-quotes.nvim)
- [Filetype Based Template Plugin For Neovim](https://github.com/doganalper/template.nvim)
- [gitlab.nvim](https://github.com/harrisoncramer/GitLab.nvim)
- [i18n.nvim](https://github.com/yelog/i18n.nvim)
- [Luarocks.nvim](https://github.com/camspiers/luarocks)
- #loading [lz.n](https://github.com/nvim-neorocks/lz.n)
- #loading [lze](https://github.com/BirdeeHub/lze)
- [NeoDoc.nvim](https://github.com/SunnyTamang/neodoc.nvim)
- [neotest-busted](https://github.com/MisanthropicBit/neotest-busted)
- [nvim-luxmotion](https://github.com/LuxVim/nvim-luxmotion)
- [pacer.nvim](https://github.com/3ZsForInsomnia/pacer.nvim)
- [prelive.nvim](https://github.com/hat0uma/prelive.nvim)
- [rgflow.nvim](https://github.com/mangelozzi/rgflow.nvim)
- [sshfs.nvim](https://github.com/uhs-robert/sshfs.nvim)
- [store.nvim](https://github.com/alex-popov-tech/store.nvim)
- [Text-to-speech in neovim](https://github.com/johannww/tts.nvim)
- [timers.nvim](https://github.com/ravsii/timers.nvim)
- [vim-yazi](https://github.com/yukimura1227/vim-yazi)

### cancel

- #docset [nvim-devdocs](https://github.com/warpaint9299/nvim-devdocs)
- #docset [nvim-devdocs](https://github.com/luckasRanarison/nvim-devdocs)
- #edit [yanky.nvim](https://github.com/gbprod/yanky.nvim)

[^1]: [PPA not working with lazy.nvim](https://www.reddit.com/r/neovim/comments/166fpfb/ppa_not_working_with_lazynvim/)
[^2]: [Neovim - Build prerequisites](https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites)
[^3]: [Install from source](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source)
