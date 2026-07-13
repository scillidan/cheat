# [syncabook](https://github.com/r4victor/syncabook)

## install

### Windows 10

1. Get `aeneas-win64-setup-*.exe` from [Releases - sillsdev/aeneas-installer](https://github.com/sillsdev/aeneas-installer/releases).
2. `set "AENEAS_FORCE_CEW=True"`

## usage

```sh
cd books
mkdir alice_in_wonderland
cd alice_in_wonderland
mkdir plaintext
```

1. For example, download "Alice in Wonderland, Retold in Words of One Syllable" by Carroll and Gorham, the `Plain Text UTF-8` format from [Project Gutenberg](https://www.gutenberg.org/ebooks/19551), rename to `text.txt`.
2. Download the corresponding book's vocal reading audio files from [LibriVox](https://librivox.org/alice-in-wonderland-retold-in-words-of-one-syllable-by-jc-gorham/), rename to `audio.zip`, then decompress it to `audio/`.
3. In `plaintext/`, create a `001_title.txt`.
4. Open `text.txt`, cut all content that above chapter strings liked `CHAPTER I`, `ACT I` into `001_title.txt`.

```sh
# syncabook download_files <url> <book>
syncabook split_text --mode opening --p <book_index> <book>\text.txt <book>\plaintext
# syncabook split_text --mode delimeter --p <book_index> <book>\text.txt <book>\plaintext
# syncabook split_text --mode equal --n 2 <book>\text.txt <book>\plaintext
syncabook to_xhtml <book>/plaintext <book>/sync_text
syncabook sync <book>
syncabook create <book>
```

For example:

```sh
sudo docker run --rm -v ~/Git/_/synclibrivox/books:/books -it scillidan/syncabook:latest split_text --mode opening --p CHAPTER books/alice_in_wonderland/text.txt books/alice_in_wonderland/plaintext
sudo docker run --rm -v ~/Git/_/synclibrivox/books:/books -it scillidan/syncabook:latest to_xhtml books/alice_in_wonderland/plaintext books/alice_in_wonderland/sync_text
sudo docker run --rm -v ~/Git/_/synclibrivox/books:/books -it scillidan/syncabook:latest sync books/alice_in_wonderland
sudo docker run --rm -v ~/Git/_/synclibrivox/books:/books -it scillidan/syncabook:latest create books/alice_in_wonderland
```

## reference

- #deepwiki [r4victor/syncabook](https://deepwiki.com/r4victor/syncabook)
- #deepwiki [r4victor/afaligner](https://deepwiki.com/r4victor/afaligner)
- [Installing aeneas - Linux](https://github.com/readbeyond/aeneas/blob/master/wiki/INSTALL.md#linux)
- [Literature for Eyes and Ears](https://www.youtube.com/@literature_for_eyes_and_ears/videos)