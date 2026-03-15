# Simple Difference-in-Differences Estimator
# Inputs:
# data      : dataframe
# outcome   : outcome variable
# treat     : treatment group indicator (0/1)
# post      : post-treatment period indicator (0/1)

did_estimate <- function(data, outcome, treat, post){

  # Extract variables
  y <- data[[outcome]]
  D <- data[[treat]]
  T <- data[[post]]

  # Group means
  mean_treat_post  <- mean(y[D==1 & T==1], na.rm=TRUE)
  mean_treat_pre   <- mean(y[D==1 & T==0], na.rm=TRUE)

  mean_control_post <- mean(y[D==0 & T==1], na.rm=TRUE)
  mean_control_pre  <- mean(y[D==0 & T==0], na.rm=TRUE)

  # Differences
  diff_treat   <- mean_treat_post - mean_treat_pre
  diff_control <- mean_control_post - mean_control_pre

  # DiD estimator
  did <- diff_treat - diff_control

  # Output
  result <- list(
    Treat_Pre = mean_treat_pre,
    Treat_Post = mean_treat_post,
    Control_Pre = mean_control_pre,
    Control_Post = mean_control_post,
    DiD_Estimate = did
  )

  return(result)
}
