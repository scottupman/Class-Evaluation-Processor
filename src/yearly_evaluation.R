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
  contacts_files <<- tk_choose.files()
  
  winDialog(type = c("ok"),
            "Select the evaluations files for the academic year.\n\n
(Example: Academic year: Summer 2019 - Fall 2020)")
  
  # vector that stores each eval file
  evals_files <<- tk_choose.files()
  
  # vectors that will store each file as a dataframe
  contacts_vector <<- vector();
  evals_vector <<- vector();
  
  # vectors are not receiving the data properly
  for (i in 1:length(contacts_files))
  {
    data <- read.csv(file = contacts_files[i], stringsAsFactors = FALSE)
    contacts_vector[i] <- data;  
  }
  
  for (i in 1:length(evals_files))
  {
    data <- read.csv(file = evals_files[i], stringsAsFactors = FALSE)
    evals_vector[i] <- data;
  }
  
  # Test
  for (x in contacts_vector)
  {
    
  }

  for (x in evals_vector)
  {

  }
}
# pass by ref if possible, otherwise just return the vector


main()