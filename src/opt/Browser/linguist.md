# [Linguist](https://github.com/translate-tools/linguist)

## config

- Linguist → Preferences
	- Translation preferences
		1. Custom translators → Manage translators → Add[^1]:
			- Name → LibreTranslator
			- Code → Copy from https://github.com/translate-tools/linguist-translators/blob/master/translators/LibreTranslator.js. Change `apiPath = 'https://translate.terraprint.co/translate'` to `apiPath = 'http://<your_host>:5000/translate'`.
		2. Translator module → LibreTranslator
	- The full page translation
		- Hotkeys → Shift+Alt+z
		- Enable popup with original text (On)
	- Export config

## reference

- #document [Linguist Translate](https://linguister.io/docs/)

## resource

### cache

- [linguist-NLLB-translator](https://github.com/MoonDragon-MD/linguist-NLLB-translator)
- [linguist-WindowsTTS](https://github.com/MoonDragon-MD/linguist-WindowsTTS/blob/main/WindowsTTS.js)

[^1]: [Offline translation - translate-tools/linguist](https://github.com/translate-tools/linguist/blob/master/docs/manuals/OfflineTranslation.md)
