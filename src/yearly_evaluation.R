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
  
  contacts_folder <- choose.dir();
  evals_folder <- choose.dir();
  
  contacts_vector <- list.files(contacts_folder)
  evals_vector <- list.files(evals_folder)
  
  for (element in contacts_vector)
  {
    print(element)
  }
}

main()