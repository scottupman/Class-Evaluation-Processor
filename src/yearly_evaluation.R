library(tcltk)
library(purrr)

source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/helpers.R")
source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/merger.R")
source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/main_helpers.R")
setwd("~/R/Evals/")

# Should contain the prompt and require the file inputs
main <- function()
{
   # Prompt user for the files
  winDialog(type = c("ok"),
            "Select the contacts files for the academic year.\n\n
(Example: Academic year: Summer 2019 - Fall 2020)")
  
  # vector that stores each contact file
  contacts_files <- tk_choose.files()
  
  winDialog(type = c("ok"),
            "Select the evaluations files for the academic year.\n\n
(Example: Academic year: Summer 2019 - Fall 2020)")
  
  # vector that stores each eval file
  evals_files <- tk_choose.files()
  
  # vectors that will store each file as a dataframe
  contacts <- lapply(contacts_files, read.csv)
  evals <- lapply(evals_files, read.csv)
  
  # Checks if each data sheet has the same column names.
  check_lists(contacts, evals)
  
  # Combine both the evaluation sheets and contact sheets.
  
  

}
main()

