# [LibreWolf](https://librewolf.net)

## install

```sh
# Arch
sudo pacman -S librewolf
sudo pacman -S speech-dispatcher
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
			- Network Settings → Settings → No Proxy[^1]
			- Tabs
				- Open links in tabs instead of new windows (On)
				- Show an image preview when you hover on a tab (On)
			- Browsing
				- Enable Picture-in-Picture video controls (On)
- More tools → Customize Toolbar → Density → Compact.
- Address bar → `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` → true.

[^1]: [Firefox can't load websites but other browsers can](https://support.mozilla.org/en-US/kb/firefox-cant-load-websites-other-browsers-can)
