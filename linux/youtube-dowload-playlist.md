# Download Youtube Channel/Playlist using Ubuntu command line

1. Download playlist in Video format
---

For this we use the command line tool `youtube-dl`

To install youtube-dl use the following commands:  

```
$ sudo apt-get update  
$ sudo apt-get install youtube-dl
```

To download an entire channel use the command:

```
youtube-dl -citw ytuser:
```

To download all videos on a playlist use the below command followed by the playlist url:

```
youtube-dl -citw <url to playlist>
```



2. Download playlist in Audio format **mp3** only
---
```
youtube-dl --extract-audio --audio-format mp3 <url to playlist>
```

3. Download playlist in both video and audio format
---

The command-line given here is unnecessarily complex and erroneous:

```
* -c forces youtube-dl to resume. By default, it will do the clever thing, and will already resume most interrupted downloads.
* -t is straight-up deprecated and has no effect whatsoever
* While you're at it, --extract-audio can be written as -x
* --max-quality FORMAT does not do at all what you want. By default, youtube-dl will pick the best quality already. --max-quality can be used to lower the quality. Luckily, FORMAT is not a valid format ID, at least not for any extractor I'm aware of.
```

So the command-line should be simply

```
youtube-dl -ix -k --audio-format mp3 http://www.youtube.com/playlist?list=XXXXXXXXXXX
```

but if you have a list Id anyways, you can just pass in that, as in:

```
youtube-dl -ix -k --audio-format mp3 XXXXXXXXXXX
```
