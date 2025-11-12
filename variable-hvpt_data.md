# How variable is HVPT input: Data pipeline


# Prerequisites

You must have the software [Praat](https://praat.org/) installed on your
machine to produce the acoustic values data.

# Audio retrieval and raw data gathering

This pipeline uses output from [Praat](https://praat.org/) using the
training stimuli audio files from Nagle et al. (2025). These audio files
are publicly accessible via their [OSF
page](https://osf.io/mnks9/files).

**Follow these steps for preparing the sound files for analyses:**

1.  Download the audio files.
    - On the [Nagle et al. (2025) OSF Files
      page](https://osf.io/mnks9/files), navigate to `1 Materials` \>
      `Training Materials` \> `Training Stimuli 6-Talker Group` and
      click `Download As Zip` in the right-hand corner.
    - Download the zip file to this directory (repository
      `How-Variable-Is-HVPT`) and extract the files by double-clicking
      on the zip file.
    - Delete the *old* zip file
    - Re-name this folder as `sound-files`. **It is very important that
      you do this.**
2.  Convert the audio to wav files for Praat.
    - Follow the [audio conversion
      instructions](audio-conversion-instructions.md) for converting the
      mp3 files to wav files, which are necessary for input into Praat.

**Follow these steps for performing acoustic analysis in Praat**

1.  Download [this Praat
    script](https://github.com/wendyelviragarcia/TextGrid_labels_extraction/blob/main/extracts_interval_labels.praat)
    and save it to your `sound-files` folder.

    - Click “Download as raw file”

2.  **The wav files and TextGrids must all be in the same folder**

    - Download my [TextGrids](textgrids-VOT/) into the `sound-files`
      folder. Alternatively, you can copy them within R under the
      `Files` tab, checking the box next to the `textgrids` folder,
      clicking the gear icon, then `Copy To...` and selecting the
      `sound-files` folder.
    - It will likely add them as a folder within the `sound-files`
      folder. You will need to extract them and move them out, into the
      `sound-files` folder (you can highlight all the files and move or
      copy them to the `sound-files` folder).

3.  Open Praat. In Praat, click `Open` \> `Read from file...` and select
    the Praat script you just saved.

4.  In the Praat script window, click `Run` (or Cmd/Ctrl + R)

5.  When the form appears, (relative paths are not working, for now,
    you’ll have to go to your file explorer and copy your full file path
    for `sound-files` and enter it into `Directory name` and **be sure
    to close it with a final slash**).

6.  In `logfile` enter `raw-durations`

7.  Click `okay` and this will save the text file to `sound-files`.

You’re all done! You can now move on to reading in the `raw-durations`
file into R.

# Read in raw data

``` r
durations <- read.delim("./sound-files/raw-durations.txt", header = FALSE)
durations
```

                                     V1   V2       V3       V4
    1        baso_voiced_f_007.TextGrid      0.000000 2.113108
    2        baso_voiced_f_007.TextGrid lead 2.113108 2.135211
    3        baso_voiced_f_007.TextGrid      2.135211 2.628005
    4        baso_voiced_f_863.TextGrid      0.000000 2.104278
    5        baso_voiced_f_863.TextGrid lead 2.104278 2.214255
    6        baso_voiced_f_863.TextGrid      2.214255 2.683991
    7        baso_voiced_f_928.TextGrid      0.000000 2.108822
    8        baso_voiced_f_928.TextGrid lead 2.108822 2.294267
    9        baso_voiced_f_928.TextGrid      2.294267 2.875896
    10       baso_voiced_m_198.TextGrid      0.000000 2.108918
    11       baso_voiced_m_198.TextGrid lead 2.108918 2.209078
    12       baso_voiced_m_198.TextGrid      2.209078 2.715986
    13     baso_voiced_m_355_1.TextGrid      0.000000 2.119506
    14     baso_voiced_m_355_1.TextGrid lead 2.119506 2.189380
    15     baso_voiced_m_355_1.TextGrid      2.189380 2.700000
    16       baso_voiced_m_377.TextGrid      0.000000 2.122648
    17       baso_voiced_m_377.TextGrid lead 2.122648 2.247823
    18       baso_voiced_m_377.TextGrid      2.247823 2.803991
    19       beno_voiced_f_007.TextGrid      0.000000 2.120606
    20       beno_voiced_f_007.TextGrid lead 2.120606 2.204108
    21       beno_voiced_f_007.TextGrid      2.204108 2.651995
    22     beno_voiced_f_863_2.TextGrid      0.000000 2.106968
    23     beno_voiced_f_863_2.TextGrid lead 2.106968 2.233746
    24     beno_voiced_f_863_2.TextGrid      2.233746 2.660000
    25     beno_voiced_f_928_1.TextGrid      0.000000 2.125328
    26     beno_voiced_f_928_1.TextGrid lead 2.125328 2.272389
    27     beno_voiced_f_928_1.TextGrid      2.272389 2.771995
    28       beno_voiced_m_198.TextGrid      0.000000 2.120438
    29       beno_voiced_m_198.TextGrid lead 2.120438 2.211044
    30       beno_voiced_m_198.TextGrid      2.211044 2.676009
    31     beno_voiced_m_355_2.TextGrid      0.000000 2.121401
    32     beno_voiced_m_355_2.TextGrid lead 2.121401 2.196002
    33     beno_voiced_m_355_2.TextGrid      2.196002 2.691995
    34     beno_voiced_m_377_1.TextGrid      0.000000 2.118126
    35     beno_voiced_m_377_1.TextGrid lead 2.118126 2.260040
    36     beno_voiced_m_377_1.TextGrid      2.260040 2.708005
    37       bimo_voiced_f_007.TextGrid      0.000000 2.114566
    38       bimo_voiced_f_007.TextGrid lead 2.114566 2.209759
    39       bimo_voiced_f_007.TextGrid      2.209759 2.707982
    40       bimo_voiced_f_863.TextGrid      0.000000 2.114387
    41       bimo_voiced_f_863.TextGrid lead 2.114387 2.245180
    42       bimo_voiced_f_863.TextGrid      2.245180 2.660000
    43       bimo_voiced_f_928.TextGrid      0.000000 2.144823
    44       bimo_voiced_f_928.TextGrid lead 2.144823 2.286424
    45       bimo_voiced_f_928.TextGrid      2.286424 2.971020
    46       bimo_voiced_m_198.TextGrid      0.000000 2.121156
    47       bimo_voiced_m_198.TextGrid lead 2.121156 2.210875
    48       bimo_voiced_m_198.TextGrid      2.210875 2.684014
    49     bimo_voiced_m_355_1.TextGrid      0.000000 2.119464
    50     bimo_voiced_m_355_1.TextGrid lead 2.119464 2.205820
    51     bimo_voiced_m_355_1.TextGrid      2.205820 2.723991
    52     bimo_voiced_m_377_1.TextGrid      0.000000 2.118072
    53     bimo_voiced_m_377_1.TextGrid lead 2.118072 2.245413
    54     bimo_voiced_m_377_1.TextGrid      2.245413 2.740000
    55       bono_voiced_f_007.TextGrid      0.000000 2.112919
    56       bono_voiced_f_007.TextGrid lead 2.112919 2.227698
    57       bono_voiced_f_007.TextGrid      2.227698 2.771995
    58       bono_voiced_f_863.TextGrid      0.000000 2.103633
    59       bono_voiced_f_863.TextGrid lead 2.103633 2.247041
    60       bono_voiced_f_863.TextGrid      2.247041 2.644014
    61       bono_voiced_f_928.TextGrid      0.000000 2.101560
    62       bono_voiced_f_928.TextGrid lead 2.101560 2.263554
    63       bono_voiced_f_928.TextGrid      2.263554 2.937052
    64       bono_voiced_m_198.TextGrid      0.000000 2.114398
    65       bono_voiced_m_198.TextGrid lead 2.114398 2.226356
    66       bono_voiced_m_198.TextGrid      2.226356 2.675986
    67     bono_voiced_m_355_1.TextGrid      0.000000 2.115963
    68     bono_voiced_m_355_1.TextGrid lead 2.115963 2.241602
    69     bono_voiced_m_355_1.TextGrid      2.241602 2.748005
    70     bono_voiced_m_377_1.TextGrid      0.000000 2.119448
    71     bono_voiced_m_377_1.TextGrid lead 2.119448 2.279825
    72     bono_voiced_m_377_1.TextGrid      2.279825 2.724014
    73       buso_voiced_f_007.TextGrid      0.000000 2.113139
    74       buso_voiced_f_007.TextGrid lead 2.113139 2.171712
    75       buso_voiced_f_007.TextGrid      2.171712 2.715986
    76       buso_voiced_f_863.TextGrid      0.000000 2.119015
    77       buso_voiced_f_863.TextGrid lead 2.119015 2.211351
    78       buso_voiced_f_863.TextGrid      2.211351 2.675986
    79       buso_voiced_f_928.TextGrid      0.000000 2.275545
    80       buso_voiced_f_928.TextGrid lead 2.275545 2.438646
    81       buso_voiced_f_928.TextGrid      2.438646 3.037302
    82       buso_voiced_m_198.TextGrid      0.000000 2.120217
    83       buso_voiced_m_198.TextGrid lead 2.120217 2.218287
    84       buso_voiced_m_198.TextGrid      2.218287 2.756009
    85     buso_voiced_m_355_1.TextGrid      0.000000 2.122797
    86     buso_voiced_m_355_1.TextGrid lead 2.122797 2.199910
    87     buso_voiced_m_355_1.TextGrid      2.199910 2.740000
    88       buso_voiced_m_377.TextGrid      0.000000 2.123591
    89       buso_voiced_m_377.TextGrid lead 2.123591 2.265895
    90       buso_voiced_m_377.TextGrid      2.265895 2.795986
    91  paso_voiceless_f_007_1.TextGrid      0.000000 2.115687
    92  paso_voiceless_f_007_1.TextGrid  lag 2.115687 2.132742
    93  paso_voiceless_f_007_1.TextGrid      2.132742 2.635986
    94  paso_voiceless_f_863_1.TextGrid      0.000000 2.112299
    95  paso_voiceless_f_863_1.TextGrid  lag 2.112299 2.128071
    96  paso_voiceless_f_863_1.TextGrid      2.128071 2.612018
    97  paso_voiceless_f_928_1.TextGrid      0.000000 2.127284
    98  paso_voiceless_f_928_1.TextGrid  lag 2.127284 2.137565
    99  paso_voiceless_f_928_1.TextGrid      2.137565 2.723991
    100 paso_voiceless_m_198_1.TextGrid      0.000000 2.121644
    101 paso_voiceless_m_198_1.TextGrid  lag 2.121644 2.144420
    102 paso_voiceless_m_198_1.TextGrid      2.144420 2.708005
    103   paso_voiceless_m_355.TextGrid      0.000000 2.113513
    104   paso_voiceless_m_355.TextGrid  lag 2.113513 2.134451
    105   paso_voiceless_m_355.TextGrid      2.134451 2.660000
    106   paso_voiceless_m_377.TextGrid      0.000000 2.121078
    107   paso_voiceless_m_377.TextGrid  lag 2.121078 2.134073
    108   paso_voiceless_m_377.TextGrid      2.134073 2.563991
    109   peno_voiceless_f_007.TextGrid      0.000000 2.121696
    110   peno_voiceless_f_007.TextGrid  lag 2.121696 2.141276
    111   peno_voiceless_f_007.TextGrid      2.141276 2.837234
    112   peno_voiceless_f_863.TextGrid      0.000000 2.116993
    113   peno_voiceless_f_863.TextGrid  lag 2.116993 2.132379
    114   peno_voiceless_f_863.TextGrid      2.132379 2.548005
    115 peno_voiceless_f_928_2.TextGrid      0.000000 2.121204
    116 peno_voiceless_f_928_2.TextGrid  lag 2.121204 2.130527
    117 peno_voiceless_f_928_2.TextGrid      2.130527 2.620000
    118   peno_voiceless_m_198.TextGrid      0.000000 2.122516
    119   peno_voiceless_m_198.TextGrid  lag 2.122516 2.144767
    120   peno_voiceless_m_198.TextGrid      2.144767 2.611995
    121 peno_voiceless_m_355_1.TextGrid      0.000000 2.126352
    122 peno_voiceless_m_355_1.TextGrid  lag 2.126352 2.147692
    123 peno_voiceless_m_355_1.TextGrid      2.147692 2.603991
    124   peno_voiceless_m_377.TextGrid      0.000000 2.118622
    125   peno_voiceless_m_377.TextGrid  lag 2.118622 2.131379
    126   peno_voiceless_m_377.TextGrid      2.131379 2.571995
    127   pimo_voiceless_f_007.TextGrid      0.000000 2.096866
    128   pimo_voiceless_f_007.TextGrid  lag 2.096866 2.125261
    129   pimo_voiceless_f_007.TextGrid      2.125261 2.531995
    130   pimo_voiceless_f_863.TextGrid      0.000000 2.113082
    131   pimo_voiceless_f_863.TextGrid  lag 2.113082 2.128693
    132   pimo_voiceless_f_863.TextGrid      2.128693 2.540000
    133   pimo_voiceless_f_928.TextGrid      0.000000 2.124866
    134   pimo_voiceless_f_928.TextGrid  lag 2.124866 2.137075
    135   pimo_voiceless_f_928.TextGrid      2.137075 2.588005
    136 pimo_voiceless_m_198_1.TextGrid      0.000000 2.118162
    137 pimo_voiceless_m_198_1.TextGrid  lag 2.118162 2.142547
    138 pimo_voiceless_m_198_1.TextGrid      2.142547 2.603991
    139   pimo_voiceless_m_355.TextGrid      0.000000 2.119517
    140   pimo_voiceless_m_355.TextGrid  lag 2.119517 2.142313
    141   pimo_voiceless_m_355.TextGrid      2.142313 2.676009
    142   pimo_voiceless_m_377.TextGrid      0.000000 2.158458
    143   pimo_voiceless_m_377.TextGrid  lag 2.158458 2.171132
    144   pimo_voiceless_m_377.TextGrid      2.171132 2.611995
    145 pono_voiceless_f_007_2.TextGrid      0.000000 2.096900
    146 pono_voiceless_f_007_2.TextGrid  lag 2.096900 2.120429
    147 pono_voiceless_f_007_2.TextGrid      2.120429 2.548005
    148 pono_voiceless_f_863_2.TextGrid      0.000000 2.111517
    149 pono_voiceless_f_863_2.TextGrid  lag 2.111517 2.128880
    150 pono_voiceless_f_863_2.TextGrid      2.128880 2.556009
    151   pono_voiceless_f_928.TextGrid      0.000000 2.339389
    152   pono_voiceless_f_928.TextGrid  lag 2.339389 2.351293
    153   pono_voiceless_f_928.TextGrid      2.351293 2.830862
    154 pono_voiceless_m_198_2.TextGrid      0.000000 2.118994
    155 pono_voiceless_m_198_2.TextGrid  lag 2.118994 2.140829
    156 pono_voiceless_m_198_2.TextGrid      2.140829 2.595986
    157   pono_voiceless_m_355.TextGrid      0.000000 2.111452
    158   pono_voiceless_m_355.TextGrid  lag 2.111452 2.145950
    159   pono_voiceless_m_355.TextGrid      2.145950 2.643991
    160   pono_voiceless_m_377.TextGrid      0.000000 2.122854
    161   pono_voiceless_m_377.TextGrid  lag 2.122854 2.138110
    162   pono_voiceless_m_377.TextGrid      2.138110 2.620000
    163   puso_voiceless_f_007.TextGrid      0.000000 2.120666
    164   puso_voiceless_f_007.TextGrid  lag 2.120666 2.146998
    165   puso_voiceless_f_007.TextGrid      2.146998 2.651995
    166 puso_voiceless_f_863_1.TextGrid      0.000000 2.104423
    167 puso_voiceless_f_863_1.TextGrid  lag 2.104423 2.122955
    168 puso_voiceless_f_863_1.TextGrid      2.122955 2.603991
    169   puso_voiceless_f_928.TextGrid      0.000000 2.126908
    170   puso_voiceless_f_928.TextGrid  lag 2.126908 2.135376
    171   puso_voiceless_f_928.TextGrid      2.135376 2.708005
    172 puso_voiceless_m_198_1.TextGrid      0.000000 2.124129
    173 puso_voiceless_m_198_1.TextGrid  lag 2.124129 2.143845
    174 puso_voiceless_m_198_1.TextGrid      2.143845 2.611995
    175   puso_voiceless_m_355.TextGrid      0.000000 2.091578
    176   puso_voiceless_m_355.TextGrid  lag 2.091578 2.133418
    177   puso_voiceless_m_355.TextGrid      2.133418 2.676009
    178   puso_voiceless_m_377.TextGrid      0.000000 2.120214
    179   puso_voiceless_m_377.TextGrid  lag 2.120214 2.144769
    180   puso_voiceless_m_377.TextGrid      2.144769 2.611995

## Information about raw data

The raw data is the output of a [Praat
script](https://www.acsu.buffalo.edu/~cdicanio/scripts/Boundary_Extractor.praat)
which retrieves timestamps for boundaries in TextGrids. I hand-annotated
VOT for all 60 audio files used in the 6-talker condition in the
original study (Nagle et al., 2025). The output includes the name of the
TextGrid file for each audio file, the tier used for annotation and
labels that I input here to indicate VOT (“lead” refers to negative VOT
and “lag” refers to positive VOT), then the start time for each interval
and the end time for each interval. There are 60 observations total,
accounting for 2 segments x 5 vowel contexts x 6 talkers.

# Data transformation and tidying

My goal is to compare VOT durations across speakers used for HVPT
stimuli, so in order to get to this point the raw data needs to be
transformed and tidied. Thus, I will need a new data frame with the
following components:

- Rename columns
- All empty Praat TextGrid tiers removed
- New column with VOT duration calculated (`end` - `start`) *in ms*
  - *Note that lead VOT is negative*
- Extract information from file names and move to new columns: Talker
  ID, gender/sex, word produced, and voicing

``` r
# rename columns 
durations <- durations |> 
  rename(file = "V1",
         label = "V2",
         start = "V3",
         end = "V4")

# extract variables from audio file names
durations <- durations |> 
  separate_wider_regex(
    file,
    patterns = c(
      word = "^[bp].+",
      "_",
      voicing = "voiced|voiceless",
      "_",
      sex = ".",
      "_",
      talker_id = "\\d+",
      "[_.]",
      rest = "\\S+")
  )

# we don't need that rest column
durations <- durations |> 
  select(word:talker_id, label:end)

# get rid of rows with empty intervals (no VOT info)
durations <- durations |> 
  filter(label == "lead" | label == "lag")

# add a column to get VOT duration
durations <- durations |> 
  mutate(VOT = (end - start)*1000)
```

## Write cleaned data to new file

``` r
# note that this is only the cleaned-up version of the full dataset
write_csv(durations, "clean-durations.csv")
```

# Prepare subsets for analyses

The following are the questions I will be attempting to address with
this project:

- To what extent do talkers vary in their productions of word-initial
  Spanish segments /b/ and /p/? (In other words, varied are the VOT
  durations for each segment between talkers and within talkers?)
- …between sex?
- …between voiced vs voiceless segments?
- …between phonetic contexts (following vowel)?

In order to address these, I will need to make subsets of the data where
it is grouped in different ways (e.g. a subset).

## Question A: What is the average VOT for /b/ and /p/ per speaker?

First, isolate each consonant:

``` r
# Talker 007

b007 <- durations |> 
  filter(talker_id == "007") |> 
  filter(voicing == "voiced")

# Talker 863

b863 <- durations |> 
  filter(talker_id == "863") |> 
  filter(voicing == "voiced")

# Talker 928

b928 <- durations |> 
  filter(talker_id == "928") |> 
  filter(voicing == "voiced")

# Talker 198

b198 <- durations |> 
  filter(talker_id == "198") |> 
  filter(voicing == "voiced")

# Talker 355

b355 <- durations |> 
  filter(talker_id == "355") |> 
  filter(voicing == "voiced")

# Talker 377

b377 <- durations |> 
  filter(talker_id == "377") |> 
  filter(voicing == "voiced")
```

``` r
# Talker 007

p007 <- durations |> 
  filter(talker_id == "007") |> 
  filter(voicing == "voiceless")

# Talker 863

p863 <- durations |> 
  filter(talker_id == "863") |> 
  filter(voicing == "voiceless")

# Talker 928

p928 <- durations |> 
  filter(talker_id == "928") |> 
  filter(voicing == "voiceless")

# Talker 198

p198 <- durations |> 
  filter(talker_id == "198") |> 
  filter(voicing == "voiceless")

# Talker 355

p355 <- durations |> 
  filter(talker_id == "355") |> 
  filter(voicing == "voiceless")

# Talker 377

p377 <- durations |> 
  filter(talker_id == "377") |> 
  filter(voicing == "voiceless")
```

### What is the average VOT for /b/ per talker?

Based on the data below, we can see that there is quite a bit of
variability between VOT for /b/ per talker. Talker 007 has a very small
VOT compared to the rest, and upon further inspection, this is the
result of one of their tokens having a very short lead VOT (around -20
ms) compared to other tokens, which is possibly due to the recording
quality.

``` r
# get means for each talker for VOT of /b/ and assign to vectors

b_names <- c("007", "198", "355", "377", "863", "928")
b_means <- c(mean(b007$VOT), mean(b198$VOT), mean(b355$VOT), mean(b377$VOT), mean(b863$VOT), mean(b928$VOT))

# use the vectors to make a new df showing the mean VOT for /b/ for each talker

b_VOT_talker <- tibble(
  talker_id = b_names,
  mean_VOT = b_means
)
```

### What is the average VOT for /p/ per talker?

Visually, the VOTs for /p/ are much less variable across talkers.

``` r
# get means for each talker for VOT of /p/ and assign to vectors

p_names <- c("007", "198", "355", "377", "863", "928")
p_means <- c(mean(p007$VOT), mean(p198$VOT), mean(p355$VOT), mean(p377$VOT), mean(p863$VOT), mean(p928$VOT))

# use vectors to make a new df showing the mean VOT for /p/ for each talker
p_VOT_talker <- tibble(
  talker_id = p_names,
  mean_VOT = p_means
)
```
