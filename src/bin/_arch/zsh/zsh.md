# [Zsh](https://www.zsh.org)

## install

```sh
sudo pacman -S zsh zsh-completions
```

## Personal do

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/subnixr/minimal  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/minimal
git clone --depth=1 https://github.com/const-void/rose-pine-man ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/rose-pine-man
rm ~/.zshrc
git init
git remote add origin https://github.com/scillidan/dotfiles.git
git branch -M main
git pull origin main
```

## reference

- #document [Zsh User's Guide](https://zsh-user-guide.netlify.app/zshguide)

## cross-reference

- [wd.md](/bin/_arch/zsh/wd.md)

## troubleshoot

- [Fix key settings (Home/End/Insert/Delete) in .zshrc when running Zsh in Terminator Terminal Emulator - Stack Overflow](https://stackoverflow.com/questions/8638012/fix-key-settings-home-end-insert-delete-in-zshrc-when-running-zsh-in-terminat)

## resource

### mark

- #alias [Zsh exa](https://github.com/zplugin/zsh-exa)
- #alias [zsh-chezmoi](https://github.com/mass8326/zsh-chezmoi)
- #cmp [fzf-tab](https://github.com/Aloxaf/fzf-tab)
- #fzf [fzf-tab-completion](https://github.com/lincheney/fzf-tab-completion)
- #fzf [zsh-completions](https://github.com/zsh-users/zsh-completions)
- #fzf [zsh-ssh](https://github.com/sunlei/zsh-ssh)
- #help [Oh My Zsh Git Plugin Cheatsheet](https://github.com/rhorno/oh-my-zsh-git-plugin-cheatsheet)
- #help [rose-pine-man](https://github.com/const-void/rose-pine-man)
- #help [zsh-help](https://github.com/Freed-Wu/zsh-help)
- #jump [wd](https://github.com/mfaerevaag/wd)
- #jumper [proj-jumper](https://github.com/Kikolator/proj-jumper)
- #mode [Zsh Vi Mode](https://github.com/jeffreytse/zsh-vi-mode)
- #setup [zinit](https://github.com/zdharma-continuum/zinit)
- #theme [minimal](https://github.com/subnixr/minimal)
- [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- [forgit](https://github.com/wfxr/forgit)
- [Smart Files Plugin for Zsh](https://github.com/vxfemboy/zsh-smart-files)
- [zpy](https://github.com/AndydeCleyre/zpy)
- [Zsh plugin for Zellij](https://codeberg.org/tranzystorekk/zellij.zsh)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-env-secrets](https://github.com/singular0/zsh-env-secrets)
- [zsh-history-on-success](https://github.com/nyoungstudios/zsh-history-on-success)
- [zsh-smart-insert](https://github.com/lgdevlop/zsh-smart-insert)
- [zsh-snr](https://github.com/raisedadead/zsh-snr)
- [zsh-touchplus](https://github.com/raisedadead/zsh-touchplus)
- [zsh-zoxide](https://github.com/z-shell/zsh-zoxide)

### later

- [codex Oh My Zsh Plugin](https://github.com/pressdarling/codex-zsh-plugin)
- [zsh-async](https://github.com/mafredri/zsh-async)
- [Zsh SSHInfo Plugin](https://github.com/SckyzO/zsh-sshinfo)

### cache

- #alias [zsh-abbr](https://github.com/olets/zsh-abbr)|
- #backup [Zsnapshot](https://github.com/zdharma-continuum/zsnapshot)
- #backup [zshrc-sync](https://github.com/Skylor-Tang/zshrc-sync)
- #cd [ZSH Up dir](https://github.com/sgpthomas/zsh-up-dir)
- #cd [cdh](https://github.com/johncassol/cdh)
- #cd [zsh-bd](https://github.com/Tarrasch/zsh-bd)
- #clear [almostontop](https://github.com/Valiev/almostontop)
- #clear [zsh-allclear](https://github.com/givensuman/zsh-allclear)
- #clipboard [zshcp: Zsh Clipboard Manager Plugin](https://github.com/soup-ms/zshcp)
- #color [zsh-shellcolors](https://github.com/SaltedBlowfish/zsh-shellcolor)
- #complete [Actiona Zsh plugin](https://github.com/matthieusb/act)
- #database [PostgreSQL Connection Plugin for Oh My Zsh](https://github.com/ruslan-korneev/pgconnect-zsh)
- #database [historikeeper](https://github.com/stiliajohny/historikeeper)
- #device [zsh-airpods-battery](https://github.com/A-delta/zsh-airpods-battery)
- #find [fd](https://github.com/aubreypwd/zsh-plugin-fd)
- #font,preview [FontFor](https://github.com/7sDream/fontfor)
- #font,preview [fontpreview](https://github.com/sdushantha/fontpreview)
- #fzf [fwf](https://github.com/ckp95/fwf)
- #fzf [fzf-tab widgets](https://github.com/tom-power/fzf-tab-widgets)
- #gh [org-hopper](https://github.com/hjdarnel/org-hopper)
- #git [git-commit-prefixer](https://github.com/dvigo/git-commit-prefixer)
- #git [zeno.zsh](https://github.com/yuki-yano/zeno.zsh)
- #help [fzf-cheatsheets](https://github.com/james-w/fzf-cheatsheets)
- #highlight [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- #highlight [zsh-url-highlighter](https://github.com/ascii-soup/zsh-url-highlighter)
- #history [history-search-multi-word - zsh plugin](https://github.com/zdharma-continuum/history-search-multi-word)
- #jump [Zsh-z](https://github.com/agkozak/zsh-z)
- #jump [fzf-z](https://github.com/andrewferrier/fzf-z)
- #ls [zsh-lsd](https://github.com/wintermi/zsh-lsd)
- #neovim [zsh-nvim-switcher](https://github.com/dacarey/zsh-nvim-switcher)
- #notify [ZSH Auto-Notify](https://github.com/MichaelAquilina/zsh-auto-notify)
- #nvm [zsh-nvm-auto-use](https://github.com/martvdmoosdijk/zsh-nvm-auto-use)
- #nvm [zsh-nvm-pnpm-auto-switch](https://github.com/spencerbeggs/zsh-nvm-pnpm-auto-switch)
- #playground [jq zsh plugin](https://github.com/unixorn/awesome-zsh-plugins)
- #prompt [Bigyls-zsh-theme](https://github.com/Bigyls/Bigyls-zsh-theme)
- #prompt [parot-htb-zsh-theme](https://github.com/Lloyd-Leo/parrot-htb-zsh-theme)
- #ranger [ranger-zshz](https://github.com/rc2dev/ranger-zshz)
- #ranger [ranger.plugin.zsh](https://github.com/NiziL/ranger.plugin.zsh)
- #setup [zplug](https://github.com/zplug/zplug)
- #setup [zsh_unplugged](https://github.com/mattmc3/zsh_unplugged)
- #skim [zsh-git-switch-branch-skim](https://github.com/okhiroyuki/zsh-git-switch-branch-skim)
- #skim [zsh-select-history-skim](https://github.com/okhiroyuki/zsh-select-history-skim)
- #ssh [zsh-ssh-agent](https://github.com/twfksh/zsh-ssh-agent)
- #tailscale [Zsh Plugin For Tailscale](https://github.com/hsrzq/PluginForTailscale)
- #tailscale [zsh-tailscale-plugin](https://github.com/HeroesLament/zsh-tailscale-plugin)
- #theme [alien-minimal](https://github.com/eendroroy/alien-minimal)
- #theme [berghain.zsh-theme](https://github.com/meshkinyar/berghain.zsh-theme)
- #theme [club-house](https://github.com/skippyr/club-house)
- #uv [zsh-uv-env](https://github.com/matthiasha/zsh-uv-env)
- [FZF Nav Plugin](https://github.com/ivomac/zsh-fzf-nav)
- [Pycalc Oh My Zsh Plugin](https://github.com/alalik/pycalc)
- [Simple zsh calculator](https://github.com/arzzen/calc.plugin.zsh)
- [VS Code Shell Integration Zsh Plugin](https://github.com/tolkonepiu/vscode-shell-integration-zsh-plugin)
- [ZSH AI Commands](https://github.com/muePatrick/zsh-ai-commands)
- [ZSH Web Search](https://github.com/GowayLee/zsh_web_search)
- [auto-fortune-cowsay-zsh](https://github.com/babasbot/auto-fortune-cowsay-zsh)
- [cwebpb](https://github.com/adi-li/zsh-cwebpb)
- [sops-crypt](https://github.com/chaosimpact/sops-crypt)
- [zenquotes](https://github.com/Dhaiwat10/zenquotes)
- [zsh-auto-source-file](https://github.com/maximux13/zsh-auto-source-file)
- [zsh-banner](https://github.com/drkhsh/zsh-banner)
- [zsh-journal](https://github.com/onurhanak/zsh-journal)
- [zsh-mise](https://github.com/wintermi/zsh-mise)
- [zsh-proxy](https://github.com/SukkaW/zsh-proxy)
- [zsh-system-update](https://github.com/cnlee1702/zsh-system-update)
- [zsh-warrior)](https://github.com/OfferPi/zsh-warrior)
- [zshclean](https://github.com/bepisdev/zshclean)
