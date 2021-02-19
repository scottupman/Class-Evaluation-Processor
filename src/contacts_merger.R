contact_merger <- setRefClass("contact_merger")

library(tcltk)

contact_merger$methods(func = function()
{
  winDialog(type = c("ok"),
            "Select all the contacts files for the academic year.\n\n
(Example: Academic year: Summer 2019 - Fall 2020)")
  
  file_list <- tk_choose.files(multi = TRUE)
  contact_list <<- lapply(file_list, read.csv)
}
) 


