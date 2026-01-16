# Useful .bat files

>[!CAUTION]
>**THIS PAGE IS UNDER CONSTRUCTION!

---
 
This is a collection of useful .bat files.
Mostly for use with various 3rd party command line programs (mostly image magick or ffmpeg etc.) and simple *"programs"* i made to help with different stuff that might be useful for others.

>[!NOTE]
> All .bat files are designed for use with modern Windows command prompt unless specifically stated.
>
> All .bat files are designed to work with files located in the same folder.
> This includes .bat files that require 3rd party programs, which expects the program to be located in the same folder.
> (You are free to edit the files to look for the executable elsewhere and/or input/output folders at your own risk, so it's best you know what you're doing, no guarantees from me that it will work though
>

>[!INFO]
>There is **no** malicious code or viruses or anything similar in any of the .bat files provided, check the code if you want.



---

## MP4/MKV Combiner

> [!IMPORTANT]
> This .bat script requires ffmpeg 

**Function**
This batch script uses ffmpeg to losslessly combine .mp4 files into a single video named Output.mp4 nearly instantaneously.
(If you're using mkv, just change the two "mp4"s in the .bat file to "mkv")

>[!INFO]
>This batch will process video files in alphanumercial order.
This means it will look at the filenames for the .mp4 files as if you have them "sorted by name" in a file browser.
If you want to combine files in a specific order, either add some leading numbers to the files or rename them so they get processed in the order you want them

>[!CAUTION]
>This will combine ***all*** .mp4 files located in the **same** folder as the .bat file.
Best practice is to create an empty work folder, and only copy/move the .mp4 files you want to combine.

<Details><summary>Usage</summary>
**Preperation**
1. Put .bat and ffmpeg.exe in a empty work folder
2. Place 
</details>

<Details><summary>Notes</summary>
This batch makes a temporary alphanumercially sorted list of all mp4(mkv) files in the same folder as the batch script, and then feed it through ffmpeg to be combined.

It might struggle to produce a good result if the clips are in different codecs/framerate etc.
</Details>

---

## Smacker 
**Function**
Toolset to convert smacker video files to MP4 and optionally combine them.


>[!CAUTION]
> This tool has currently only been tested on files from the FMV game Black Dahlia)

> [!IMPORTANT]
> This .bat files requires:
> • Smacker video tools (Conversion to MP4)
> • ffmpeg (Combining several .mp4 files into a single .mp4 file)

<Details>
This toolset comes with 3 .bat files.
Since i wasn't able at the time to make it a single .bat file, I added a simple menu to simplify the proceds,  judt for my own complexity and feature creeep sake. 
 
<Details><summary>Files description and usage</summary>

**Effutool.bat** 
This is the menu.

**Wakasmk.bat** 
This is the demuxer (places individual demuxed .SSK files in "SmackedMP4" folder)
-# you can change the filetype it looks for in the batch, just change all references to ".ssk" to the filetype you want.

**Smerge.bat**
This is a modified version of the MP4 / MKV combiner, it now looks for files in the SmackedMP4 subfolder.</details>

<Details><summary>Notes</summary>
You can run the files individually too if you want, i just made the menu for ease of access to both batch acripts (and potential future scripts can be added later)
</details>

---

## SND2MID 

**Function:**
Convert extracted Serra On-line .snd music files into .mid files

*MS-DOS COMPATIBLE .bat*

> [!IMPORTANT]
> This batch uses a tool that requires
>either:
>**MS-DOS** or equivalent.
>or
>**A DOS emulator** (Dosbox or similar)
>to run.
>(A config file for Dosbox is included.)

<Details><summary>***ADVERTISEMENT***</summary>
<p>Have you just ripped some music from a sierra game and wondering what the Keith to do with those .snd files?

well extinguish your wondering period and behold;</p>
<p> **The ScumSoft SND to MIDI Discombobulator!***</p>

<p> Our vast team of a single individual has created a batch menu tool for simplifying SND to MIDI conversion using the **snd2mid** tool.

But,because this uses an *"ancient"* DOS program, you can forget running it on modern windows...

...that is, until **now!**
The program and accompanying. bat file has been made it into a dosbox package with an added move program, as there isn't a good option in native dosbox.</p>
<P>Tell your handlers, warden or probation officer about **ScumSoft** today!</P>
</details>

<details><summary>**Requirements**</summary>

• Dosbox - Or similar DOS emulator
(Config file for Dosbox is included)
-# you should also be able to use the conf file with dosbox for mac/linux and other ports.

*Optional*
• MS-DOS or equivalent DOS compatibles (For running on retro PCs) 
</details>

<Details><summary>**Usage**</summary>
1 put the .snd files you want to convert in the SND folder.
2 Run START.bat.
3 Select which type of midi type/device you want (opl2, GM, yamaha etc)
4 Find converted midi files in the SND folder, sorted in folder(s) by midi type/device.</details>

<Details><summary>**Notes**</summary>
Although the tool snd2mid can make "combined" midis (f.ex. GM+Casio), this batch script will only convert snd files to each midi type/device individually. (one midifile per device)</details>

</Details>
