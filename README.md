# How variable is variable phonetic input used in High Variability Phonetic Training (HVPT) paradigms?

Sarah Schaech | ses501@pitt.edu | updated: December 12, 2025

### Description
This is Sarah Schaech's Data Science project investigating the acoustic variability of training stimuli used in a High Variability Phonetic Training (HVPT) paradigm. 

### Data
The data used in this project is derived from the training stimuli audio files from [Nagle et al. (2025)](attribution.md). Acoustic measurements such as voice onset time (VOT) of the word-initial stops and formant frequencies, intensity, and f0 of the following vowels were extracted from the audio files using [Praat (Boersma & Weenik, 2025)](praat.org).

Instructions for [retrieving the original audio files](raw-data-retrieval-instructions.md), [converting them to WAV files (for use in Praat)](audio-conversion-instructions.md), and [segmenting them in Praat](praat-segmentation-instructions.md) are included in this repository: See the description of repository contents below.

### Project Organization

- [**Final report**](final_report.md): Final report of the project including research motivation, description of data, methods for data wrangling, tidying, and analysis, and final results.
- [**Data pipeline**](variable-hvpt_data.qmd) (and [md version](variable-hvpt_data.md)): Main data pipeline that combines acoustic measurement data and performs analyses.
- [sound-files](sound-files/): Folder for housing audio files and segmented TextGrid files.
- [data](data/): Output datasets from [formant extractor Praat script](formant-extractor-script_edited.praat) and main data pipeline.
- [images](images/): Folder housing image files of plots computed in main data pipeline.
- [instructions](instructions/): Folder housing instructions for audio file retrieval, conversion, and segmentation.
- [move-sound-files.sh](move-sound-files.sh): Shell script for extracting audio from .zip files and moving to proper folder.
- [convert-to-wav.sh](convert-to-wav.sh): Shell script for running batch conversion of mp3 audio files to WAV files.
- [Project plan](project-plan.md): Document outlining plan for this project.
- [Progress report](progress_report.md): Document containing descriptions of project milestones.
- [Project presentation](data-science-fp-presentation.pdf): Copy of PowerPoint presentation given on this project.
- [attribution](attribution.md): Document with attribution for audio files.
- [LICENSE](LICENSE.md): Statement and description of license for this project.

<br/>
<br/>
<br/>