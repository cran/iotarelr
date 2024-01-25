## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(iotarelr)
head(iotarelr_written_exams)

## -----------------------------------------------------------------------------
res_iota2<-compute_iota2(
  data=iotarelr_written_exams[c("Coder A","Coder B","Coder C")],
  random_starts = 10,
  trace = FALSE)
expected_categories<-est_expected_categories(
  data=iotarelr_written_exams[c("Coder A","Coder B","Coder C")],
  aem=res_iota2$categorical_level$raw_estimates$assignment_error_matrix)
head(expected_categories)


