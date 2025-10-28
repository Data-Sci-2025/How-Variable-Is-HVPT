# Progress Report

[First entry](#october-7-2025)\
[Progress report 1](#progress-report-1)

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

