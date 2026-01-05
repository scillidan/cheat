# [BeatPrints](https://github.com/TrueMyst/BeatPrints)

> Create eye-catching, Pinterest-style music posters effortlessly. BeatPrints integrates with Spotify and LRClib API to help you design custom posters for your favorite tracks or albums. [TrueMyst/BeatPrints]

> 轻松制作引人注目的Pinterest风格的音乐海报。BeatPrint与Spotify和LRClib API集成，帮助你为最喜欢的曲目或专辑设计自定义海报。 [TrueMyst/BeatPrints]

## install

1. Visit [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
2. Create app `BeatPrints`, add `http://localhost` on `Redirect URIs (required)`.
3. Go `Settings`, get `Client ID`, `Client secret`.
4. Add `SPOTIFY_CLIENT_ID`, `SPOTIFY_CLIENT_SECRET` into PATH.

```sh
git clone --depth=1 https://github.com/TrueMyst/BeatPrints
cd BeatPrints
uv venv
.venv\Scripts\activate
uv pip install -e .
uv pip install python-dotenv
```

## config

[^1]

```sh
# Windows 10
mkdir C:\Users\User\AppData\Roaming\BeatPrints
subl C:\Users\User\AppData\Roaming\BeatPrints\config.toml
```

```toml
[general]
search_limit = 7
output_directory = "C:\\Users\\User\\Downloads"

[credentials]
client_id = "SPOTIFY_CLIENT_ID"
client_secret = "SPOTIFY_CLIENT_SECRET"
```

## usage

```sh
beatprints
```

## reference

- [Add new themes to BeatPrints](https://github.com/TrueMyst/BeatPrints/issues/25)
- [beatprints_from_csv.py](https://gist.github.com/scillidan/203fd0ce69800709e4c3057404f813be)

[^1]: [CLI Setup](https://beatprints.readthedocs.io/en/latest/guidebook/cli.html)

## appdedix

- [beatprints_batch-script.mp4](https://scillidan.github.io/media_cheat/bin/beatprints_batch-script.mp4)
