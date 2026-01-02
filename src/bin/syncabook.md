s# [syncabook](https://github.com/r4victor/syncabook)

> syncabook is a set of tools for creating ebooks with synchronized text and audio (a.k.a. read along, read aloud; like Amazon's Whispersync). You start with a list of text files (plaintext or XTML) and a list of audio files (.wav or .mp3) and get an ebook in the open EPUB3 with Media Overlays format.  
> The synchronization is done automatically using the afaligner library. It is a forced aligner that works by synthesizing text and then aligning synthesized and recorded audio using a variation of the DTW (Dynamic Time Warping) algorithm. [r4victor/syncabook]

> syncabook是一套用于创建带有同步文本和音频的电子书的工具（也称为“跟读”、“朗读”；类似于亚马逊的Whispersync）。你可以从一系列文本文件（纯文本或XTML）和一系列音频文件（.wav或.mp3）开始，最终得到一个采用开放EPUB3带媒体叠加格式的电子书。  
> 同步是通过使用afaligner库自动完成的。它是一个强制对齐器，通过合成文本并使用DTW（动态时间规整）算法的一种变体对合成音频和录制音频进行对齐。 [r4victor/syncabook]

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

## appdedix

- [syncabook.mp4](https://scillidan.github.io/media_cheat/bin/syncabook.mp4)
