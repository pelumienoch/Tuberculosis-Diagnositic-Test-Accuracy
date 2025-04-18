# install from CRAN
install.packages("testCompareR")

# install development version
if(require("devtools")) {
  install_github("kajlinko/testCompareR")
} else {
  install.packages("devtools")
  require("devtools")
  install_github("kajlinko/testCompareR")
}

##### load packages
pacman::p_load(here, rio, dplyr, flextable, skimr,testCompareR)

diagnosis2 <- import(here("Diagnosis data2.xlsx"))

#### unfortunately, this can only run two test and a gold standard at once, so i will have to subset the dataset
### Time to perfom the diagnostic tests
results2 <- compareR(diagnosis2)
print(results2)
results12$acc # returns matrices summarising diagnostic accuracies

str(diagnosis2)
diagnosis2$`Urine LAM Result` <- as.numeric(diagnosis2$`Urine LAM Result`)
interpretR(results2)

