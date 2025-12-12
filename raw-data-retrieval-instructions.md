# Raw data retrieval instructions

This is **Step 1** of the [prerequisites for the main data pipeline](variable-hvpt_data.qmd). This document provides instructions for how to retrieve the raw mp3 audio files.

## Step 1: Download mp3 audio files

1. On the [Nagle et al. (2025) OSF **Files** page](https://osf.io/mnks9/files), navigate to `1 Materials` > `Training Materials` > `Training Stimuli 6-Talker Group` and click `Download As Zip` in the right-hand corner. 
    
2. Download the zip file to this directory (repository `How-Variable-Is-HVPT`).

3. **Repeat Steps 1-2 for `Training Stimuli 2-Talker Group` from the same OSF folder.**

4. In your RStudio Terminal, run `bash move-sound-files.sh`. The sound files should appear in the `sound-files` folder in this repository.

## Step 2: Move on to converting mp3 audio to wav

After you have completed the above steps, you can navigate to the [instructions for converting the mp3 audio files to wav files](audio-conversion-instructions.md) for use in Praat.



