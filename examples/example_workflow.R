library(dplyr)

data <- data.frame(
  district = rep(1:10, each=5),
  year = rep(2015:2019, 10),
  outcome = rnorm(50)
)

source("../R/panel_diagnostics.R")

panel_check(data, id="district", time="year")
