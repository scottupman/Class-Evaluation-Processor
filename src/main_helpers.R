check_lists <-function(contacts, evals)
{
  for (entry in 1:length(contacts))
  {
    # print(ncol(contacts[[entry]]))
    # }
    if(names(contacts[[1]]) != names(contacts[[entry]]))

      setdiff(names(contacts[[1]]), names(contacts[[entry]]))
      stop("One of the contact files have different column names, please make sure the data is correctly formatted")
  }
  
  for (entry in 1:length(evals))
  {
    # print(ncol(contacts[[entry]]))
    if(names(evals[[1]]) != names(contacts[[entry]]))
      setdiff(names(contacts[[1]]), names(contacts[[entry]]))
      stop("One of the evaluation files have different column names, please make sure the data is correctly formatted")
  }
  
}

