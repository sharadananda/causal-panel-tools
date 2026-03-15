source("../R/did_estimator.R")

set.seed(123)

data <- data.frame(
  treat = rep(c(0,1), each=100),
  post  = rep(c(0,1), 100),
  outcome = rnorm(200)
)

result <- did_estimate(
  data,
  outcome="outcome",
  treat="treat",
  post="post"
)

print(result)
