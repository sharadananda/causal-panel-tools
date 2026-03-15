generate_event_study <- function(data, unit, time, treatment_year){

  data$event_time <- data[[time]] - data[[treatment_year]]

  return(data)
}
