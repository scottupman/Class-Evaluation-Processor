library(tcltk)

source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/helpers.R")
source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/merger.R")
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
  contacts <- vector("list", length = 3);
  evals <- vector("list", length = 3);
  
  # 
  contacts <- lapply(contacts_files, read.csv)
  evals <- lapply(evals_files, read.csv)
  
  # Just merge the contacts and evaluation files
  for (entry in 1:length(contacts))
  {
    if(names(contacts[[1]]) != names(contacts[[entry]]))
      stop("One of the contact files have different names, please correct the data")
  }
  # Foreach (data frame in contacts)
    # check if the names match
      # if they don't match
        # throw exception error
      # else
        # merge the contacts together.
  
  # I feel like the data frames should have the same names for consistency
  # But in the end, there should be one data frame for contacts and one data frame for evals
  # Make sure that csv file formats match.
  
}

main()

