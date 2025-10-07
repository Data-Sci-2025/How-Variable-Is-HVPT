# Project Plan
### Sarah Schaech

## Working title
**How variable is variable phonetic input used in High Variability Phonetic Training (HVPT) paradigms?**

## Summary
One "requirement" of high variability phonetic training is that the input given to learners/listeners is *highly variable* in terms of talker voices and the phonetic context (e.g. surrounding phones or position in a word/syllable) that the L2 target sound for training is presented in. It is thought that the highly variable input allows listeners to hone in on the cues that are actually relevant to discriminating a phonetic contrast, and gradually "learning" to ignore those that are not. However, it's not always tested how variable the input used in an HVPT study is actually variable: If we looked at the differences between talkers' voices, how variable is the input actually? Meaning, how different are the talkers' voices from each other? Insight into this may guide researchers on how to curate and select their training stimuli. This would further complement a larger question about how much variability is actually ideal for training L2 learners (versus how much is too little and how much is too much).

## End Goal
To determine **a)** how variable the acoustics of speech (i.e. VOT) *within* speakers used for stimuli in an HVPT paradigm are and **b)** how variable the acoustics of speech are *between* speakers used for stimuli in an HVPT paradigm.

## Possible Unknowns/Contingencies
I've never used the [rPraat package](https://cran.r-project.org/web/packages/rPraat/readme/README.html) before, so it will take some time to orient to using it, but I found a nice [tutorial](https://fu.ff.cuni.cz/praat/rDemo.html) that should help. <br>
Additionally, the stimuli recordings that are publicly available are mp3 files, which is a file format not supported in Praat, so I will have to convert these to wav files instead. I will use [this software](https://ffmpeg.org/) recommended by Dan (thank you!).

## Data
The data come from Nagle et al. (2025). In this study, L2 Spanish learners were trained on a Spanish stop contrast (/b/-/p/). The training stimuli used were recordings of disyllabic, stop-initial nonsense Spanish words presented in each of the five Spanish vowel contexts (/i, e, a, o, u/). This results in a total of 10 tokens recorded by each of the six talkers used in their study (pg. 7), or 60 recordings overall. The recordings are publicly available on OSF, along with information about each recording (e.g. talker id, age, sex). There is no (publicly accessible) acoustic analysis of the talkers' voices, which is what I will be performing.


## Analysis
My end goal for this analysis is to calculate how different the talkers' productions of the stimuli are between talkers as well as within talkers. Since the target contrast of Nagle et al. (2025) was Spanish /b/-/p/, of which the primary cue for distinction is voice onset time (pg. 5), I will focus on VOT measurements for my analysis. Additionally, since I am interested in the input used for training, only stimuli used in the training tasks of Nagle et al. (2025) will be used. Truthfully, I am still not sure at this point which statistical tests are most appropriate for my analyses.



## Citations
* [Here is the paper where the data originally comes from](https://www-cambridge-org.pitt.idm.oclc.org/core/journals/applied-psycholinguistics/article/comparing-lower-and-higher-variability-multitalker-perceptual-training/2755FEDEFB74EC4A3DD83011015BCB97?utm_campaign=shareaholic&utm_medium=copy_link&utm_source=bookmark)
* [Here is a link to the stimuli materials](https://osf.io/mnks9/files/osfstorage)

