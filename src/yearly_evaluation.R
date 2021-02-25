library(tcltk)

source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/helpers.R")
source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/merger.R")

# Should contain the prompt and require the file inputs
main <- function()
{
   # Prompt user for the files
  winDialog(type = c("ok"),
            "Select all the contacts files for the academic year.\n\n
(Example: Academic year: Summer 2019 - Fall 2020)")
  
  contacts_folder <- tk_choose.dir();
  evals_folder <- tk_choose.dir();
  
  contacts_files <- list.files(contacts_folder)
  evals_files <- list.files(evals_folder)
  
  contacts_vector <- c();
  evals_vector <- c();
  
  # I'm getting an error with a file(file, "rt") problem
  
  for (x in contacts_files)
  {
    data <- read.csv(file = x, stringsAsFactors = FALSE)
    append(data, contacts_vector)    
  }
  
  for (x in evals_files)
  {
    data <- read.csv(file = x, stringsAsFactors = FALSE)
    append(data, evals_vector)
  }
  
  # Testing values
  for (x in contacts_vector)
    print(x)
  
  for (x in evals_vector)
    print(x)
}
# pass by ref if possible, otherwise just return the vector


main()