# How to convert mp3 to wav using ffmpeg

### Download ffmpeg (for macOS)
1. In your terminal, check x code commands: `xcode-select --install`
2. Go to [brew.sh](brew.sh) and copy the code, then paste into your terminal. Enter your password so that it downloads.
3. Then, enter `brew install ffmpeg` into your terminal. Done!

### Download ffmpeg (for Windows/PC)
1. Follow the instructions on this [website](https://www.geeksforgeeks.org/installation-guide/how-to-install-ffmpeg-on-windows/)

### Converting audio
1. Make sure you have a folder in this directory called `sound-files` where you have downloaded the mp3 files from the [Nagle et al. (2025) OSF page](https://osf.io/mnks9/files), found in Materials > Training Materials
    * This is part of the instructions from [variable-hvpt_data.qmd](variable-hvpt_data.qmd)
    * **You must follow those steps first and have a folder named `sound-files` ready and containing the original mp3 files**
2. In your RStudio terminal, run `bash convert-to-wav.sh` This will do a batch conversion of all the mp3 files in your working directory.
    * You must have bash installed (if you have Git, you have this)
    * Alternatively, you can run `./convert-to-wav.sh` in your **machine's terminal**
3. In the RStudio terminal again, type `rm sound-files/*.mp3` to remove the mp3 files.

