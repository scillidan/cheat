# [AudioBookConverter](https://github.com/yermak/AudioBookConverter)

> AudioBookConverter was originally designed as simple and lightweight application to convert a set of mp3 files to a single m4b (aac) file to be played on your i-device (or any device now) Over time AudioBookConverter evolved and currently can support conversion of most of popular formats to m4b, it also can handle existing m4b files and process them. AudioBookConverter can work smart to find relevant artwork and can do advanced chapter management.  
> Note: Mac and Linux versions are experimental and may require some skills to install and run them and may not work as you expect [yermak/AudioBookConverter]

> AudioBookConverter最初设计为一个简单轻量的应用程序，可以将一组mp3文件转换为单个m4b（aac）文件，以便在您的i设备（或任何设备）上播放。随着时间的推移，AudioBookConverter逐渐发展，目前可以支持将大多数流行格式转换为m4b，它还可以处理现有的m4b文件并对其进行处理。AudioBookConverter能够智能地查找相关的封面艺术，并且可以进行高级章节管理。  
> 注意：Mac和Linux版本是实验性的，可能需要一定的技能来安装和运行，且可能无法如您所期望的那样正常工作。 [yermak/AudioBookConverter]

## usage

For example, I have chapters audio files for a book.

1. Add → Folder → Add folder.
2. If audio files alright have title → Chapters → Chapter 1 → Edit
	 - "Chapter" (Off)
	 - Chapter No (Off) `title`
	 - Duration (Off)
	 - Apply for all chapters (On)
3. If not have, Chapter 1 → Edit → Enter `custom title`. Do it for every chapters.
4. Edit `Book Info`.
5. Go tab `Art Work`, Add the cover picture.
6. Quality:
	 ```
	 Preset: android 5+
	 Format: m4b
	 Split by: parts
	 Speed: 1.0
	 Sampling frequency, Hz: 44100
	 Channels: 2
	 Cut-off frequencies higher than: 12000
	 Force re-encoding: Auto
	 Constant bitrate, kb/s: 128
	 ```
7. Start.

## Name template

Book filename teamplate:

```
<WRITER><if(SERIES)> - <SERIES><if(BOOK_NUMBER)> - Book <BOOK_NUMBER; format="%,02d"><endif><endif> - <TITLE><if(NARRATOR)> {<NARRATOR>}<endif>
```

Book Part filename template (Default):

```
<if(WRITER)><WRITER> <endif><if(SERIES)>- [<SERIES><if(BOOK_NUMBER)> -<BOOK_NUMBER><endif>] - <endif><if(TITLE)><TITLE><endif><if(NARRATOR)> (<NARRATOR>)<endif><if(YEAR)>-<YEAR><endif><if(PART)>, Part <PART; format="%,03d"><endif>
```

Chapter template (Default):

```
<if(BOOK_NUMBER)><BOOK_NUMBER>. <endif><if(BOOK_TITLE)><BOOK_TITLE>. <endif><if(CHAPTER_TEXT)><CHAPTER_TEXT> <endif><if(CHAPTER_NUMBER)><CHAPTER_NUMBER; format="%,03d"> <endif><if(TAG)><TAG> <endif><if(CUSTOM_TITLE)><CUSTOM_TITLE> <endif><if(DURATION)> - <DURATION; format="%02d:%02d:%02d"><endif>
```

## appdedix

![audiobookconverter](https://raw.githubusercontent.com/scillidan/cdn_image_cheat/refs/heads/main/opt/audiobookconverter.png)
