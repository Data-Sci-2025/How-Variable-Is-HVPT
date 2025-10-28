# How variable is HVPT input: Data pipeline


# Read in raw data

``` r
durations <- read_excel("raw_durations.xlsx")
durations
```

    # A tibble: 180 × 4
       file                       label start   end
       <chr>                      <chr> <dbl> <dbl>
     1 baso_voiced_f_007_TextGrid <NA>   0     2.11
     2 baso_voiced_f_007_TextGrid lead   2.11  2.14
     3 baso_voiced_f_007_TextGrid <NA>   2.14  2.63
     4 baso_voiced_f_863_TextGrid <NA>   0     2.10
     5 baso_voiced_f_863_TextGrid lead   2.10  2.21
     6 baso_voiced_f_863_TextGrid <NA>   2.21  2.68
     7 baso_voiced_f_928_TextGrid <NA>   0     2.11
     8 baso_voiced_f_928_TextGrid lead   2.11  2.29
     9 baso_voiced_f_928_TextGrid <NA>   2.29  2.88
    10 baso_voiced_m_198_TextGrid <NA>   0     2.11
    # ℹ 170 more rows

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

- All empty Praat TextGrid tiers removed
- New column with VOT duration calculated (`end` - `start`) *in ms*
  - *Note that lead VOT is negative*
- Extract information from file names and move to new columns: Talker
  ID, gender/sex, word produced, and voicing

``` r
# get rid of rows with empty intervals (no VOT info)
durations <- durations |> 
  filter(label == "lead" | label == "lag")

# add a column to get VOT duration
durations <- durations |> 
  mutate(VOT = (end - start)*1000)

# get data from file names and create columns
durations <- durations |> 
  separate_wider_delim(
    file,
    delim = "_",
    names = c("word", "voicing", "sex", "talker_id", NA)
  )
  
# rename label column to vot_type
durations <- durations |> 
  rename(vot_type = label)
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
