# How to convert mp3 to wav using ffmpeg

### Download ffmpeg (for macOS)
1. In your terminal, check x code commands: `xcode-select --install`
2. Go to [brew.sh](brew.sh) and copy the code, then paste into your terminal. Enter your password so that it downloads.
3. Then, enter `brew install ffmpeg` into your terminal. Done!

### Download ffmpeg (for Windows/PC)
1. Follow the instructions on this [website](https://www.geeksforgeeks.org/installation-guide/how-to-install-ffmpeg-on-windows/)

### Converting audio
1. Make sure you have a folder in this directory called `sound-files` where you have downloaded the mp3 files from the [Nagle et al. (2025) OSF page](https://osf.io/mnks9/files)
2. In your RStudio terminal, set the directory to `sound-files` by typing `cd sound-files`
2. Type `for i in *.mp3 ; ffmpeg -i $i ${i%.*}.wav ; done` into the terminal and hit enter. This will do a batch conversion of all the mp3 files in your working directory.
    * For PC/Windows: `$ for i in *.mp3 ; ffmpeg -i $i ${i%.*}.wav ; done`
    * Alternatively, you can convert audio files one-by-one by using `ffmpeg -i audio_name.mp3 audio_name.wav` in the terminal.
3. In the terminal again, type `rm *.mp3` to remove the mp3 files.

