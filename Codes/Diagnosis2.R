

##### load packages
pacman::p_load(here, rio, dplyr, flextable, skimr,testCompareR)

diagnosis <- import(here("Diagnosis data.xlsx"))

#### unfortunately, this can only run two test and a gold standard at once, so i will have to subset the dataset

diagnosis78 <- diagnosis %>%
  select(`MTB+CRP quantitative+CRP semi quantitative`,`MTB+Urine LAM`, `Culture Result`)

### Time to perfom the diagnostic tests
results78 <- compareR(diagnosis78)
results78

interpretR(results78)


diagnosis56 <- diagnosis %>%
  select(`MTB+CRP quantitative+CRP semi quantitative`, `Urine LAM+CRP quantitative+CRP semi quantitative`, `Culture Result`)

### Time to perfom the diagnostic tests
results56 <- compareR(diagnosis56)
results56

interpretR(results56)