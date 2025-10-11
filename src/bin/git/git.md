# [git](https://git-scm.com/)

## install

```sh
# Arch
sudo pacman -S git
# Windows 10
scoop install	git
```

## Personal do

```sh
# Linux
git config --global core.autocrlf input
# Windows
git config --global core.autocrlf true
```

## usage

### config

```sh
git config --global user.email "user@email.com"
git config --global user.name "username"
```

### Init

```sh
git init
git remote add origin https://github.com/<user>/<repo>
git branch -M main
```

### Push

```sh
# git diff
git add <file1> <dir1> <dir2>
# git status
git commit -m "<commit_info>"
# git push -u origin main
git push
```

### Pull

```sh
# git pull origin main
git pull
```

### Push tag

```sh
# git tag -d v0.0.1
# git push --delete origin v0.0.1
git tag v0.0.1
git push origin v0.0.1
```

### Other

```sh
# Undo and re-push
git fetch --all
git reset --hard <commit-hash>
# git reset --hard HEAD~1
git push --force origin <branch>
````

```sh
# Rebase the above 3 commit
git rebase -i HEAD~3
```

```
pick <the first commit>
squash <will merge into first commit>
squash <will merge into first commit>
```

## reference

- #blog [A Git story: Not so fun this time](https://blog.brachiosoft.com/en/posts/git/)
- #blog [Git forge opinions: GitHub, GitLab, Gitea, Sourcehut](https://cadence.moe/blog/2022-07-03-git-forge-opinions-github-gitlab-gitea-sourcehut)
- #guide [Adding a license to a repository](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository)
- #guide [Git for Windows](https://github.com/linrongbin16/fzfx.nvim?tab=readme-ov-file#git-for-windows)
- #lesson [Conventional Commits](https://www.conventionalcommits.org)
- #lesson [Keep a Changelog](https://keepachangelog.com/en/1.1.0/)
- #lesson [Semantic Versioning](https://semver.org)
- #post [Contributing](https://github.com/MarcDiethelm/contributing)
- #post [It Matters Who Owns Your Copylefted Copyrights](https://sfconservancy.org/blog/2021/jun/30/who-should-own-foss-copyrights/)

## cross-reference

- #arch [forgit.md](/bin/git/forgit.md)
- [git-crypt.md](/bin/git/git-crypt.md)
- [git-sync.md](/bin/git/git-sync.md)
- [gitleaks.md](/bin/git/gitleaks.md)
- [lazygit.md](/bin/git/lazygit.md)
- [multi-git-status.md](/bin/git/multi-git-status.md)

## resource

### mark

- [git-crypt - transparent file encryption in git](https://github.com/AGWA/git-crypt)
- [git-sizer](https://github.com/github/git-sizer)
- [git-sync](https://github.com/simonthum/git-sync)
- [Gitleaks](https://github.com/gitleaks/gitleaks)
- [gowl](https://github.com/tadashi-aikawa/gowl)
- [gptcommit](https://github.com/zurawiki/gptcommit)
- [Lazygit](https://github.com/jesseduffield/lazygit)
- [mgitstatus](https://github.com/fboender/multi-git-status)
- [ugit](https://github.com/Bhupesh-V/ugit)

### later

- [Branchless workflow for Git](https://github.com/arxanas/git-branchless)
- [commitizen](https://github.com/commitizen/cz-cli)
- [git-cliff](https://github.com/orhun/git-cliff)
- [git-filter-repo](https://github.com/newren/git-filter-repo)

### cache

- [bit](https://github.com/chriswalz/bit)
- [commitizen](https://github.com/commitizen-tools/commitizen)
- [cz-git](https://github.com/Zhengqbbb/cz-git)
- [degit](https://github.com/Rich-Harris/degit)
- [Git Profile Switcher](https://github.com/TheYkk/git-switcher)
- [git-bug](https://github.com/MichaelMure/git-bug)
- [git-notify](https://github.com/jevakallio/git-notify)
- [git-open](https://github.com/paulirish/git-open)
- [git-recent](https://github.com/paulirish/git-recent)
- [gitbackup](https://github.com/amitsaha/gitbackup)
- [GitUI](https://github.com/extrawurst/gitui)
- [jj](https://github.com/jj-vcs/jj)
- [Mercurial](https://mercurial-scm.org)
