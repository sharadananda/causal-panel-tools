```r
panel_check <- function(data, id, time){

  # Number of unique units
  units <- length(unique(data[[id]]))

  # Number of time periods
  periods <- length(unique(data[[time]]))

  # Check duplicates
  duplicates <- any(duplicated(data[c(id,time)]))

  cat("Panel Diagnostics\n")
  cat("-----------------\n")
  cat("Number of units:", units, "\n")
  cat("Number of time periods:", periods, "\n")

  if(duplicates){
    cat("Warning: Duplicate id-time observations detected.\n")
  } else {
    cat("No duplicate id-time observations.\n")
  }

}
