# Causal Panel Tools

Utilities for preparing panel datasets for causal inference and 
difference-in-differences (DiD) analysis in R and Stata.

This project provides lightweight functions for preparing and diagnosing 
panel datasets before applying modern causal inference methods.

## Motivation

Empirical economics research often requires significant data preparation 
before applying causal inference estimators. These tools help researchers:

- Validate panel structure
- Identify treatment cohorts
- Generate event-study variables
- Perform dataset diagnostics

The goal is to make preprocessing steps for DiD analysis more transparent 
and reproducible.

---

## Features

- Panel dataset diagnostics
- Detection of duplicate unit-time observations
- Identification of treatment cohorts
- Generation of event-study leads and lags
- Summary statistics for panel datasets

---
## Difference-in-Differences Estimator

The repository includes a simple implementation of the classical
two-group two-period Difference-in-Differences estimator.

Example:

```r
source("R/did_estimator.R")

did_estimate(data,
             outcome="y",
             treat="treatment",
             post="post_period")
## Example Workflow (R)

```r
source("R/panel_diagnostics.R")

panel_check(data, id="district", time="year")
