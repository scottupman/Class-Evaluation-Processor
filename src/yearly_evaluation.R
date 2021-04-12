library(tcltk)
library(dplyr)
library(R6)

source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/helpers.R")
source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/merger.R")
source("/Users/User/Desktop/Files/GitHub repositories/Class-Evaluation-Processor/src/main_helpers.R")
setwd("~/R/Evals/")

YearEval <- R6Class("YearEval", public = list(
  
  yearly_evals = data.frame(matrix(ncol = 15)),
  
  initialize = function()
  {
    colnames(self$yearly_evals) <- c("Course", "Question", "Poor", "Fair", "Good", "Very Good", "Excellent",
                                     "Total Responses", "Class size", "Semester", "Year", "Course Director",
                                     "Dep", "Rating", "Weighted Rating")
  },
  
  create_merged_contacts = function() 
  {
    winDialog(type = c("ok"),
              "Select the contacts files for the academic year.\n\n
(Example: Academic year: Summer 2019 - Fall 2020)")
    
    # vector that stores each contact file
    contacts_files <- tk_choose.files()
    
    # vectors that will store each file as a dataframe
    contacts <- lapply(contacts_files, function(i)
    {read.csv(i, stringsAsFactors = F, encoding = "UTF-8")})
    
    # Combined data frames of the contacts and evaluation files. 
    merged_contacts <- bind_rows(contacts, .id = NULL)
    return(merged_contacts)
    
  },
  create_merged_evals = function()
  {
    winDialog(type = c("ok"),
              "Select the evaluations files for the academic year.\n\n
(Example: Academic year: Summer 2019 - Fall 2020)")
    
    # vector that stores each eval file
    evals_files <- tk_choose.files()
    
    evals <- lapply(evals_files, function(i)
    {read.csv(i, stringsAsFactors = F, encoding = "UTF-8")})
    
    merged_evals <- bind_rows(evals, .id = NULL)
    return(merged_evals)
  }

))

# yearly_evals <- data.frame(matrix(ncol = 15))
# colnames(yearly_evals) <- c("Course", "Question", "Poor", "Fair", "Good", "Very Good", "Excellent",
#                             "Total Responses", "Class size", "Semester", "Year", "Course Director",
#                             "Dep", "Rating", "Weighted Rating")
# 
# # Should contain the prompt and require the file inputs
# main <- function()
# {
#    # Prompt user for the files
#   winDialog(type = c("ok"),
#             "Select the contacts files for the academic year.\n\n
# (Example: Academic year: Summer 2019 - Fall 2020)")
#   
#   # vector that stores each contact file
#   contacts_files <- tk_choose.files()
#   
#   
#   winDialog(type = c("ok"),
#             "Select the evaluations files for the academic year.\n\n
# (Example: Academic year: Summer 2019 - Fall 2020)")
#   
#   # vector that stores each eval file
#   evals_files <- tk_choose.files()
#   
#   # vectors that will store each file as a dataframe
#   contacts <- lapply(contacts_files, function(i)
#   {read.csv(i, stringsAsFactors = F, encoding = "UTF-8")})
# 
#   
#   evals <- lapply(evals_files, function(i)
#   {read.csv(i, stringsAsFactors = F, encoding = "UTF-8")})
#   
#   # Checks if each data sheet has the same column names.
#   # check_lists(contacts, evals)
#   
#   # Combined data frames of the contacts and evaluation files. 
#   merged_contacts <<- bind_rows(contacts, .id = NULL)
#   merged_evals <<- bind_rows(evals, .id = NULL)
#   
# }
# 
# main()

