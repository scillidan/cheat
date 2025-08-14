# [Linguist](https://github.com/translate-tools/linguist)

## config

- Linguist → Preferences
	- Translation preferences
		1. Custom translators → Manage translators → Add[^1]:
			- Name → LibreTranslator
			- Code → Copy from https://github.com/translate-tools/linguist-translators/blob/master/translators/LibreTranslator.js. Change `apiPath = 'https://translate.terraprint.co/translate'` to `apiPath = 'http://arch:5000/translate'`.
		2. Translator module → LibreTranslator
	- Page translation
		- Hotkeys → Shif+Alt+z
		- Enable popup with original text
	- Export config

[^1]: [Offline translation - translate-tools/linguist](https://github.com/translate-tools/linguist/blob/master/docs/manuals/OfflineTranslation.md)
