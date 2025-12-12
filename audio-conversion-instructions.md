# Audio conversion instructions

This is **Step 2** of the [prerequisites for the main data pipeline](variable-hvpt_data.qmd). This document provides instructions for how to convert the raw mp3 audio files into wav files for use in Praat.

## Step 1: Download ffmpeg

### Download ffmpeg (for macOS)

1. In your terminal, check x code commands: `xcode-select --install`
2. Go to [brew.sh](https://brew.sh/) and copy the code, then paste into your terminal. Enter your password so that it downloads.
3. Then, enter `brew install ffmpeg` into your terminal. Done!

### Download ffmpeg (for Windows/PC)

1. Follow the instructions on this [website](https://www.geeksforgeeks.org/installation-guide/how-to-install-ffmpeg-on-windows/)

## Step 2: Converting audio using ffmpeg

1. Make sure you have already completed the steps for retrieving the raw mp3 audio files from the [Nagle et al. (2025) OSF page](https://osf.io/mnks9/files), and that they are saved in the `sound-files` folder
2. In your **RStudio terminal**, run `bash convert-to-wav.sh` This will do a batch conversion of all the mp3 files in your working directory.
    * You must have bash installed (if you have Git, you have this)
    * Alternatively, you can run `./convert-to-wav.sh` in your **machine's terminal**

## Step 3: Move on to Praat segmentation

After you have completed the above steps, you can now move on to the instructions for uploading the audio files into Praat, creating TextGrids, and segmenting the audio files.

