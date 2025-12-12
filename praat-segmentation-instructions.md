# Praat segmentation & script instructions

This is **Step 3** of the [prerequisites for the main data pipeline](variable-hvpt_data.qmd). This document provides instructions for how to convert the raw mp3 audio files into wav files for use in Praat.

If you do not already have Praat, download it [here](https://www.fon.hum.uva.nl/praat/).

## Step 1: Make TextGrids for each audio file

1. In the Praat Objects window, click `Open` > `Read from file...` and select _all **.wav**_ files in your `sound-files` folder, then click `Open` in your file explorer/Finder window.

2. Back in the Praat Objects window, select/highlight all the sound objects (they will turn blue...you can do this by clicking on the first sound object, scrolling all the way down to the bottom, hold the `Shift` key, and click the last sound object).

3. Once all the sound objects are selected, click `Annotate >` from the options on the right-hand side, then click `To TextGrid...`

4. In the window that appears, enter "VOT vowel" ( _exactly_ like this, without quotation marks) in `All tier names`, then clear the text in the `point tiers` box.

5. To View & Edit a sound object and its corresponding TextGrid, select the sound object, scroll down to the TextGrid with the same name, hold the `Cmd` (or `Ctrl`) key, and click the TextGrid object. Then, click `View & Edit` from the options on the right-hand side.

## Step 2: Segment the audio files for VOT duration and vowels

It is beyond the scope of this project (currently) for me to provide an entire explanation of how to properly segment an audio file for VOT and vowels. I will assume you, the user, have some knowledge of this or will learn how to do it if you are following this pipeline. :)

## Step 3: Run Praat script for extracting formant data

1. Once you've completed segmenting all your audio files: In your file explorer/Finder, navigate to the [formant-extractor-script.praat](formant-extractor-script.praat) and double-click it to open Praat and the script window.

2. In the script window click `Run` from the window's menu bar, then click the blue `OK` button at the bottom of the form that appears. The script will run and output a file called **formant-data.txt**, automatically saved to your local copy of this repo.

## Step 4: Head to the pipeline

This completes the data retrieval process and you can move to [variable-hvpt_data.qmd](variable-hvpt_data.qmd) to continue with data wrangling/tidying and analyses.