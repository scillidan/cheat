# [LibreWolf](https://librewolf.net)

## install

```sh
# Arch
sudo pacman -S librewolf
# Windows 10
scoop install librewolf
```

## config

- LibreWolf
	- Settings
		- LibreWolf
			-Browser Behavior
				- Enable Firefox Sync (On)
				- Allow userChrome.css customization (On)
			- Useful links
				1. Open user profile directory.
				2. Create `chrome/userChrome.css`.
				3. Copy from https://github.com/gnuunixchad/dotfiles/blob/master/.mozilla/chrome/userChrome.css.
		- General
			- Network Settings → No Proxy[^1].
			- Tabs → Open links in tabs instead of new windows.
- More tools → Customize Toolbar → Density → Compact.
- Address bar → `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` → true.

[^1]: [Firefox can't load websites but other browsers can](https://support.mozilla.org/en-US/kb/firefox-cant-load-websites-other-browsers-can)
