# [HandBrake](https://github.com/HandBrake/HandBrake)

## install

```sh
# Arch
sudo pacman -S handbrake handbrake-cli
# Windows 10
scoop install handbrake handbrake-cli
```

## config

- HandBrake → Preferences
	- General → Path to Media Player → Path → Browse → `<player_app>`
	- Output Files → Automatically name output files
		- Default Path → Browse → `<save_to_path>`
		- File Format → {source}.{preset}
		- Change case to Title Case (Off)
		- Replace underscores with a space (Off)

## usage

```sh
# Encode video using Handbrake CLI with a preset
handbrakecli --preset-import-file <preset.json> --input "$1" --output "_handbrake.mp4"
```

## reference

- #option [HandBrake](https://handbrake.fr/docs/en/latest/cli/command-line-reference.html)
- [How to reduce video file size using Handbrake](https://steamcommunity.com/sharedfiles/filedetails/?id=1856527757)
- [Newbie On Encoding From Blu-Ray Source Files](https://www.reddit.com/r/handbrake/comments/qas35a/newbie_on_encoding_from_bluray_source_files)

## annex

- [file_handbrake_preset](https://github.com/scillidan/file_handbrake_preset)
