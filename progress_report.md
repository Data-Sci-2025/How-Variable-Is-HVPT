# Progress Report

[First entry](#october-7-2025)\
[Progress report 1](#progress-report-1)\
[Progress report 2](#progress-report-2)\
[Progress report 3](#progress-report-3)

### October 7, 2025

* Created GitHub repo and local repo for project
* Added & updated readme file; Added license file
* Updated gitignore file with macOS gitignore stuff & added my own preferences
* Downloaded `ffmpeg` and practiced converting mp3 files to wav files & made an instructions document for doing this
* Updated project plan, added more details about what acoustic values I will focus on
* Spent time researching appropriate statistical tests for my analysis, but no decisions made yet

## Progress report 1

### Completed

First, I installed **ffmpeg** and used it to convert each of the stimuli mp3 files to wav files for use in Praat. I then spent time searching for a script or other code that might be able to measure VOT automatically, but was unsuccessful (one runs using Python, and another is only trained on English). Instead, I went ahead and segmented VOT by hand. Then, I found a Praat script that extracts timestamps for boundaries of defined intervals in a TextGrid, and placed the output into an Excel file. This is the [raw data](raw_durations.xlsx]), which consisted of the filename (TextGrid), the label given to the intervals, the start time of each interval, and the end time of each interval.\ 

Within Excel, I did some preliminary cleaning of filenames. The original filenames were something like "baso_voiced_f_123_2.TextGrid." These names include the word produced, its voicing of the initial stop, the sex of the talker, the talker ID, and (sometimes) which of the repetitions was kept, and then the TextGrid file extension. Since I wanted to extract this information and assign it to columns using `separate_wider_delim()` the process of cleaning the names for this was simpler and more time-efficient in Excel: I used the find & replace function to remove any identifiers for which recording from the speaker was kept (e.g. _1 or _2) and replace "." with an underscore.\

Finally, I [read this data into R, and began data transformation and tidying.](variable-hvpt_data.qmd) Up to this point, I have completed the following:

- Removed rows with no VOT intervals
- Used added a new column that calculates the VOT duration in *ms* by subtracting `start` from `end` and multiplying by 1000
- Used `separate_longer_delim()` to extract data from the values in the file names and assigned these to new columns: `word`, `voicing`, `sex`, `talker_id` and removed the .TextGrid file extension

### Next steps

My final steps for data cleaning and transformation are to make the lead VOT values negative (mainly for visualization purposes later) and add observation ids (so each row has a unique identifier).\ 

Then, I can move on to preparing data for analysis. My main question is: 
    - For a given word (e.g. baso), how variable is VOT of /b/ across the 6 talkers that produced the stimuli?
    
However, after this, I can expand my analysis to the following questions:

* To what extent does between-talker variability vary between different segments?
* ...between voiced vs voiceless segments?
* ...between talker sex?
* ...between phonetic context (following vowel)?
    
In order to perform the analyses to answer these questions and generate visualizations, my next step is to create subsets of the data.

## Progress report 2

### Completed

Since the last progress report, I prepared a few of the necessary subsets of the data for analysis (e.g. a subset for all /b/ tokens together and a subset for all /p/ tokens together). Then, I started working on the analysis of differences in VOT between talkers for /b/ and /p/. [This analysis is included in the Quarto document with my data pipeline](variable-hvpt_data.qmd). 

Additionally, this time was spent looking for additional sources of audio files from other HVPT studies or software to add to my project. Within this time, I was unable to find other open-source materials (audio files use as stimuli in training). I considered using audio files that are used in the software [English Accent Coach](https://www.englishaccentcoach.com/home), but decided against using this mainly because the audio files are not exactly open source/publicly accessible. While it's possible to retrieve them through web-scraping, the source folder where the files are stored are inaccessible, indicating they are not meant to be directly taken from the webpage.

Ultimately, I decided to expand my analysis of the Nagle et al. (2025) stimuli to include an investigation of additional acoustic features other than VOT to get a more well-rounded understanding of the variability that is present in the input of an HVPT study. I will also incorporate tokens that were included in the 2-talker condition of this study (not included in the 6-talker condition) to analyze and compare variability present between conditions. More time was spent converting additional audio files to the proper form and researching Praat scripts to hopefully automatize the process of extracting information such as formant frequencies.

### Sharing scheme

The [data](clean-durations.csv) from this project is derived from the open-source audio files generously online shared by the authors of Nagle et al. (2025). I will not be including the raw files along with my data and data pipeline, rather instructions for others on how to access the audio files. My justification for this is that they are already openly accessible from the original authors and avoids any licensing issues that might arise by me including them on my own repository. I think it's also important to understand the context where the data comes from, and this exists on the OSF page were the audio files are available for anyone to use and download with proper attribution to the authors. Otherwise, the data (extracted acoustic values) will be publicly accessible on my repository.

### License

I chose the [Creative Commons Attribution 4.0 International License](https://choosealicense.com/licenses/cc-by-4.0/#) because it is the same as the one used for the materials from Nagle et al. (2025), and because my project is data, rather than something like software which would likely use a different kind of license. I chose the Creative Commons license with attribution because I believe it's good practice to not only give credit where it's due, but allow for transparency: If this data is used or shared with attribution to me, it is more easily traced back to the source where additional info or context is also present.

# Progress report 3

## Completed work & File organization

Since I made some more headway on my analysis at the time of my previous progress report, the time spent between then and now has mostly been dedicated to improving the reproducability of my code and materials. I learned a little about rPraat and used it to automate the process of extracting durations from labeled VOT intervals in TextGrid files, which replaces the need for using a Praat script itself. I also learned from Dan how to make shell script so users can easily run the ffmpeg code to do the audio conversions. The rPraat code will be included in my [variable-hvpt_data.md](variable-hvpt_data.md), which is my main pipeline, since it will combine with the names of the audio files to form a larger dataframe that shows all the important variables associated with each file: Word, voicing, sex, and talker_id.

However, in order to first get to that point, the audio files need to be retrieved and converted, and TextGrids made for input into the pipeline. The instructions for doing these things will live (and most already do) outside the pipeline as a sort of "prerequisite" step for those that wish to ultimately extract acoustic information from audio files and run an analysis on them. Those instructions are currently found at [audio-conversion-instructions.md](audio-conversion-instructions.md) and [raw-data-retrieval-instructions.md](raw-data-retrieval-instructions.md).

## Quarto document info

The pipeline, [variable-hvpt_data.md](variable-hvpt_data.md) is set as a GitHub-flavored markdown file (gfm). I'm keeping it as this type because I think it's important for potential users to be able see the pipeline and review it before running it themselves, and this I would expect to be done directly on GitHub.

## Data

At this point, my data files have not changed (I've made the code to be reproducible on others' machines, but now it's not working on mine because of how my directly is currently set up, so this is a to-do item). The [clean-durations.csv](clean-durations.csv) will be updated soon to reflect changes I made in the TextGrid boundary-retrieval process (the appearance may change slightly but the values will be the same). All other analyses and data are part of the [variable-hvpt_data.md](variable-hvpt_data.md), which will soon include plots/visualizations on top of analysis results.

