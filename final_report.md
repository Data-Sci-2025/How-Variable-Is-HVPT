# How variable is variable phonetic input used in High Variability Phonetic Training (HVPT) paradigms?

Sarah Schaech

December 12, 2025

## Introduction

One of the major difficulties associated with learning a second language (L2) is learning to discriminate unfamiliar, non-native sounds. Current models of non-native/L2 speech perception predict this to be the case because of influence from our pre-established L1 sound systems (see Flege & Bohn, 2021; Best & Tyler, 2007). When the abstract categorical representations of L1 sounds we have in our minds do not match the way sound categories are defined in an L2, this may cause cases such as L2 contrasts assimilating to the same L1 sound category or L2 sounds poorly assimilating to the closest approximate L1 sound category, which can make perceptual discrimination of L2 sounds difficult (Flege & Bohn, 2021; Best & Tyler, 2007). However, evidence has shown that perceptual training can be effective at improving a learner’s ability to discriminate L2 sounds (Sakai & Moorman, 2018). High Variability Phonetic Training (HVPT) is one perceptual training paradigm that has been shown to be highly effective (e.g., Thomson, 2018; Uchihara et al., 2025). In HVPT, a learner is presented with target L2 sound(s) presented using multiple, different talker voices and in a multiple, different phonetic contexts (e.g., surrounding phones, position in a word) using a forced-choice identification task and with trial-by-trial corrective feedback. It is thought that the input variability from talker voices and phonetic contexts allows listeners to “tune in” to the relevant acoustic cues that define the target L2 sound(s) or sound contrast(s), and “tune out” acoustic information that is irrelevant (Barriuso & Hayes-Harb, 2018). Although the key feature of HVPT is its input variability, the stimuli used in HVPT paradigms are rarely acoustically analyzed to assess what kind and how much variability exists in the input used in training. In order to assess the claim that input in HVPT is truly highly variable, the current study collected a battery of acoustic measurements from a set of stimuli used in a recent HVPT study to examine the variability that exists in the training input. 

## Research Question

The current study performed an acoustic analysis of stimuli used in Nagle et al. (2025) in order to address the following research question: 

> To what extent are stimuli in an HVPT paradigm variable from each other across tokens, between talkers, between contexts, and between condtions? 

## Data

The data used in this study consist of acoustic measurements of the full set of stimuli tokens used in Nagle et al. (2025). In their study, they investigated the difference in identification of Spanish initial /p/-/b/ stops between L1 English groups trained on two versus six talkers in an HVPT paradigm. Across both conditions, the entire stimuli set used in this study consisted of 80 tokens, or 40 /p/-/b/ minimal pairs of Spanish real words and non-words. In the six-talker condition, participants heard a total of 60 unique tokens. Each talker (n = 6) recorded 10 tokens: Five CVCV minimal pairs where /p/ or /b/ appeared in word-initial position followed by one of each of the five vowels (/a/, /e/, /i/, /o/, /u/), one of three other consonants (/s/, /n/, or /m/), and a word-final /o/ (e.g., baso). In the two-talker condition, participants heard a total of 40 unique tokens. Each talker (n = 2) recorded 20 tokens: 10 minimal pairs identical in structure to those used in the six-talker position, except the word-medial consonant was either /l/ or /tʃ/ in addition to /s/, /n/, or /m/ (e.g., picho). This stimuli set was selected because the audio files are publicly available on the study’s OSF webpage, and the two- versus six-talker conditions provide an ideal test case for assessing variability between lower- and higher-variability training. 

Only the audio files were publicly available, and acoustic measurements of the files were extracted for the purpose of this study using Praat (Boerma & Wesnick, 2025). For each file, measures of initial stop consonant Voice Onset Time (VOT) duration, and following-vowel F1, F2, f0, and intensity measurements were taken. VOT was chosen because it is a primary acoustic cue to the stop voicing contrast in Spanish (as well as in other languages like English, see Zampini & Green, 2001). Fundamental frequency (f0) was chosen as this has been found to be a secondary cue to stop consonant voicing in some languages and to some extent in Spanish (Llanos et al., 2013; Schertz et al., 2015). Formants F1 and F2 and intensity of the following vowel were chosen in order to assess how phonetic context variability may influence the stop contrast.

## Methods

The Nagle et al., (2025) audio files were retrieved directly from the study’s associated OSF webpage and converted to WAV files locally using ffmpeg (ffmpeg developers, 2016), which is required for importing them to Praat. Using Praat, the audio files were manually segmented for VOT and vowel durations using TextGrids. VOT duration information was extracted from the Praat TextGrids within RStudio using the tg.getIntervalDuration function from the praatR package. A Praat script was run to collect formant frequencies, f0, and intensity from the vowels, producing a separate text file that was then read into RStudio and combined with the VOT data. VOT durations for /b/ tokens were converted to negative values (lead VOT) in RStudio, as this information cannot be encoded directly in Praat. Vowel formant values were normalized using Lobanov method, using the normLobanov function from the phonR package. The resulting dataset consisted of information for each audio file including the token (word), voicing, word-medial vowel, talker ID, talker gender, condition (two- versus six-talker), f0, vowel F1, vowel F2, vowel intensity, and stop VOT duration. 

## Results & Analysis

### VOT 

Looking first at variability in VOT for the /p/-/b/ contrast by talker in **Figure 1**, there appears to be a large amount of variability between talkers, as well as within some talkers. It’s expected that there is less inter- and intra-talker variability in VOT for /p/, given it is generally estimated to be less than 35 ms (Zampini & Green, 2001). As for /b/, it’s expected to see more variability as Spanish voiced stops have lead VOT (meaning the values are negative, or the voicing begins well before stop release). Other observations here are that male talkers appear to have more intra-talker variability than do female talkers. Talker 928 appeared to have an unexpectedly large VOT and long-reaching VOT range, but upon further inspection of this talker’s spectrograms, the duration segmentation is plausible. 

**Figure 1**

![](images/all-items-by-talker-boxplot-voicing-facet-1.png)

An ongoing question related to HVPT methods is the relative importance of talker variability versus phonetic context variability for training outcomes. A first step in an approach to this question is comparing inter-talker and inter-phonetic context variability (in this case, inter-vowel variability). Figure 2 shows VOT distributions by following vowel. Comparing this distribution with that in Figure 1, there appears to be greater variability introduced by different talkers, rather than different following-vowel contexts (at least for this set of stimuli). 

**Figure 2**

![](images/voicing-VOT-by-vowel-all-items-1.png)

Interestingly, VOT for each stop appears to be quite similar in each condition with only slightly more spread in the six-talker condition, as seen in Figure 3. If we assume more talkers introduce more variability (as is the assumption in HVPT research), we might expect a difference to appear between conditions here, but that is not entirely the case.  

**Figure 3**

![](images/vot-by-condition-1.png)


### Vowels 

The next set of analyses examines the variability of F1 and F2 of the vowels following the word-initial stops. Figure 4 shows the “vowel space” across all talkers and items used in the stimuli (80 tokens total). No vowel seems to be significantly more variable than the other, which is similar to the VOT distribution per following vowel in Figure 2. 

**Figure 4**

![](images/vowel-space-all-items-1.png)

Vowel spaces by gender for each stop show some distinct patterns of variability, both between genders and between stops, as shown in **Figure 5**. For example, female talkers tended to produce back vowels that vary more along the height dimension for voiced stops, and overall whereas male talkers seemed to produce back vowels that were closer together. This potentially suggests that talker gender introduces great variability in the stimuli for vowels following the word-initial stop.

**Figure 5**

![](images/vowel-space-by-gender-1.png)
 
The vowel space comparison between /b/ and /p/ tokens in Figure 6 might suggest that, rather than vowels showing greater variability following one stop over the other, the vowels exhibit different directions of variability depending on the stop it follows (e.g., /i/ tends to be more variable in height following /p/ versus /b/). 

**Figure 6**

![](images/vowel-space-by-stop-1.png)

Interestingly, vowels produced for the two-talker condition show greater spread in the vowel space than those in the six-talker condition despite being produced by less talkers, as seen in **Figure 7**. One potential reason for this is that more words were included in the two-talker condition (20 minimal pairs) than in the six-talker condition (10 minimal pairs). This could indicate that more variability is introduced with a greater number of unique tokens per talker than introducing more talker-productions of the same fewer set of tokens (i.e., intra-talker variability ends up being somewhat greater than inter-talker variability in this case).

**Figure 7**

![](images/vowel-space-by-condition-1.png)

### f0

Another potential cue for voicing is f0 (see Schertz et al., 2020), and may also introduce variability in the input. Figure 8 below shows f0 values by talker, gender, and stop. Overall, mean f0 by talker tends to remain consistent across the stop contrast for all talkers, but the dispersion is slightly greater for /b/ than /p/, and slightly greater for female talkers (especially Talker 928) than male talkers. This would be expected, given the pre-voicing of /b/ carries over to the vowel (where the f0 measurement was derived) and potentially influences the f0 (where /p/ would not have this same influence). Talkers 007 (female) and 355 (male) show surprising results: The female talker has a lower f0 than the male talker, and the male talker has a higher f0 than the female talker. Upon closer inspection of the spectrograms for each, the pitch contours appear plausible. However, Talker 007's voice is perceptibly lower than the other female talkers in this stimuli set, and Talker 355 also has a perceptibly higher voice than the other male talkers, which could possibly account for this unexpected result.

**Figure 8**

![](images/f0-by-talker-and-stop-1.png)

Looking at f0 by vowel, gender, and stop in Figure 9, female talkers tended to be more variable overall for most vowels than male talkers, which is also in line with observations from Figure 8, which showed that female talkers tended to have wider f0 dispersion than men, especially for /b/. 

**Figure 9**

![](images/f0-by-vowel-and-gender-1.png)

In comparing f0 between the six-talker and two-talker conditions (**Figure 10**), unsurprisingly there is greater variability in the six-talker condition than the two-talker condition. If f0 remains fairly constant for each talker, introducing more talkers would contribute greater variability than less. Considering all the observations for f0 together, if f0 is a reliable cue for the Spanish stop contrast, more talkers would introduce greater f0 variability than other factors (such as vowel) or less talkers.

**Figure 10**

![](images/f0-by-condition-1.png)

### Model

Two models predicting voicing from f0 and f1 were attempted. Here, the goal was to see if certain acoustic cues/features might be better predictors of stop voicing than others, which could in turn inform future HVPT practices in curating stimuli for training. Binary logistic regressions were performed for both models, given the binary nature of the voicing outcome variable (voiced or voiceless), and the continuous variables present in the current dataset were chosen as predictors. f1 specifically was chosen due to some evidence showing that f1 onset frequency may cue the stop voicing contrast in Spanish (Schertz et al., 2020).

The model in **Table 1** below shows the binary logistic regression model predicting voicing from f0. Results show the p-value is well above 0.05, and the estimate for f0 is also miniscule, suggesting it is not a significant predictor of voicing in this stimuli set.

**Table 1**

|             | Estimate    | Std. Error  | P-value     |
| ----------- | ----------- | ----------- | ----------- | 
| (Intercept) | -0.241293   | 0.957182    | 0.801       |
| f0          | 0.001547    | 0.005968    | 0.795       |


The model in **Table 2** below shows the binary logistic regression model prediciting voicing from f1 (Lobanov normalized value). Results from this model also suggest that f1 is not a signifcant predictor of voicing in this stimuli set.

**Table 2**

|             | Estimate    | Std. Error  | P-value     |
| ----------- | ----------- | ----------- | ----------- | 
| (Intercept) | 3.576e-05   | 2.238e-01   | 1.000       |
| f1_norm     | 7.920e-02   | 2.330e-01   | 0.734       |

## Discussion/Conclusion

The examination of acoustic variability present in a set of HVPT training stimuli completed in this study shows that the amount and kind of variability for different acoustic measures (VOT, f0, vowel formants) will vary itself according to other factors that create the stimuli. For example, while the assumption exists that more talkers introduces more variability, this is not always the case: As seen in the analysis of VOT by condition, the spread of VOT was similar between the two conditions. This suggests that the variability between the two talkers in the two-talker condition was great enough to match what would be expected to be greater variability across more talkers. In other words, it may not be enough to assume that _any_ six talkers will introduce more variability in the input than any two talkers. Rather, inter-talker variability may be an important aspect to consider when selecting talkers for recording training stimuli.

A similar case might be made for phonetic contexts. In the analysis of vowels (f1 and f2 values) by condition, it was observed that the two-talker condition showed a more variable vowel space than the six-talker condition. While one potential explanation for this is that the two-talker condition had a greater number of words, this observation shows that the assumption that more of _any_ talkers will introduce more variability than fewer talkers may not always be true. This observation also reveals the need to further investigate the relative contributions of talkers and phonetic contexts to input variability and training outcomes: In this case, it is possible more words or phonetic contexts led to greater input variability than more talkers.

f0 on the other hand, remained more consistent across stops and vowels, but highly variable in the six-talker condition, suggesting high inter-talker variability. In this particular case, f0 may not have varied much by stop or vowel context because isolated words that comprise the stimuli lack the pitch variation (such as from stress or intonation) that might otherwise exist in more natural speech. This could provide a potential explanation for the model results showing that f0 is not a significant predictor of voicing in this stimuli set (or, it may not be in general). This may also reveal the importance of considering the target sound(s)/contrast(s) and other intervening factors: If f0 is a reliable cue for defining the category of the target sound(s), more talkers and different genders is likely to introduce greater variability in the input than something like phonetic contexts alone if the stimuli are recorded in a less-natural manner. 

While HVPT studies have often carried the assumption that more talkers and more phonetic contexts will "surely" introduce greater variability in the input, the observations made in this study show that this assumption may not always be correct. Instead, these findings reveal that it may be important to analyze acoustic cues present in training stimuli in future work in order to control for the greatest amount of potential variability for the input. 

## Project History & Process

I think one of the biggest challenges of this project has been performing analyses and generating interpretations of them. The research question at hand is quite unique in that it only asks essentially "How much variability is in HVPT training stimuli?" which is hard to quantify when I feel as if I'm programmed to make a comparison to something else, but that "something else" doesn't exist (or at least, not for this project). I feel strongly that it's an important question to ask, rather than continuing with the assumption that any set of talkers or words will supply the amount of variability most beneficial for learning a sound/contrast or that most resembles variability in the real world. Another challenge was pure data wrangling: Sadly, Praat and R are not always nicely compatible with each other, and getting the important information from the audio files and TextGrids was often (and still is) difficult. While the `praatR` package does build some nice (little) bridges between Praat and R (for VOT, namely), at my current understanding, there does not appear to be a bridge like this between formant objects/formant data in Praat and R. This comprises automaticity and reproducability, but is definitely something I want to tackle in the future and figure out a more streamlined method for.

### References

Barriuso, T. A., & Hayes-Harb, R. (2018). _High variability phonetic training as a bridge from research to practice_. The CATESOL Journal, 30(1).  

Best, C., & Tyler, M. (2007). Nonnative and second-language speech perception: Commonalities and complementarities. In M. J. Munro & O.-S. Bohn (Eds.), _Second language speech learning: The role of language experience in speech perception and production_ (pp. 13-34). https://doi.org/10.1075/lllt.17.07bes  

Boersma, Paul & Weenink, David (2025). Praat: doing phonetics by computer [Computer program]. Version 6.4.48. https://praat.org

FFmpeg Developers. (2016). ffmpeg tool (Version be1d324) [Software].http://ffmpeg.org/

Flege, J., & Bohn, O.-S. (2021). The Revised Speech Learning Model (SLM-r). In R. Wayland (Ed.), _Second language speech learning: Theoretical and empirical progress_ (pp. 3-83). https://doi.org/10.1017/9781108886901.002  

Llanos, F., Dmitrieva, O., Shultz, A., & Francis, A. L. (2013). Auditory enhancement and second language experience in Spanish and English weighting of secondary voicing cues. _The Journal of the Acoustical Society of America, 134_(3), 2213–2224. doi:10.1121/1.4817845

Nagle, C., Bruun, S., & Zárate-Sández, G. (2025). Comparing lower and higher variability multi-talker perceptual training. _Applied Psycholinguistics, 46_, e14, Article e14. https://doi.org/10.1017/S0142716425000141 

Sakai, M., & Moorman, C. (2018). Can perception training improve the production of second language phonemes? A meta-analytic review of 25 years of perception training research. _Applied Psycholinguistics, 39_(1), 187-224. https://doi.org/10.1017/S0142716417000418  

Schertz, J., Cho, T., Lotto, A., & Warner, N. (2015). Individual differences in phonetic cue use in production and perception of a non-native sound contrast. _Journal of Phonetics, 52,_ 183–204. doi:10.1016/j.wocn.2015.07.003

Schertz, J., Carbonell, K., & Lotto, A. J. (2020). Language specificity in phonetic cue weighting: Monolingual and bilingual perception of the stop voicing contrast in English and Spanish. _Phonetica, 77_(3), 186-208. https://doi-org.pitt.idm.oclc.org/10.1159/000497278 

Thomson, R. I. (2018). High Variability [Pronunciation] Training (HVPT). _Journal of Second Language Pronunciation, 4_(2), 208-231. https://doi.org/https://doi.org/10.1075/jslp.17038.tho  

Uchihara, T., Karas, M., & Thomson, R. I. (2025). High variability phonetic training (HVPT): A meta-analysis of L2 perceptual training studies. _Studies in Second Language Acquisition, 47_(3), 794-827. https://doi.org/10.1017/S0272263125100879 

Zampini, M. L., & Green, K. P. (2001). The voicing contrast in English and Spanish: The relationship between perception and production. In Nicol, J. (Ed.), _One mind, two languages: Bilingual language processing_ (pp. 23-48). 