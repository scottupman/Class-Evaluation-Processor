library(R6)

Course <- R6Class("Course",

  public = list
  (
    initialize = function(name, section, CRN, term)
    {
      private$name <- name
      private$section <- section
      private$CRN <- CRN
      private$term <- term
    },
    
    # Getters
    get_name = function(){ return(private$name)},
    get_section = function(){ return(private$section)},
    get_CRN = function(){ return(private$CRN)},
    get_term = function(){ return(private$term)}
    
    private = list
    (
      name,
      section,
      CRN,
      term
    ),
  )
)