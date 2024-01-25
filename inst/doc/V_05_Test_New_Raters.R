## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(iotarelr)
res_iota2<-compute_iota2(data=iotarelr_written_exams[c("Coder A","Coder B","Coder C")],
                         random_starts = 10,
                         trace = FALSE)
expected_categories<-est_expected_categories(
  data=iotarelr_written_exams[c("Coder A","Coder B","Coder C")],
  aem=res_iota2$categorical_level$raw_estimates$assignment_error_matrix)
true_values<-expected_categories$expected_category

## -----------------------------------------------------------------------------
res_new_rater<-check_new_rater(
  true_values = true_values,
  assigned_values = iotarelr_new_rater)

## -----------------------------------------------------------------------------
get_summary(res_new_rater)

## ----fig.height = 3, fig.width = 7.2, fig.align = "center", fig.cap="Figure 1: Plot of Iota for a New Rater"----
plot_iota(res_new_rater)


## ----fig.height = 5, fig.width = 7.2, fig.align = "center", fig.cap="Figure 2: Stream Plot"----
plot_alluvial_new_rater<-plot_iota2_alluvial(res_new_rater)
plot(plot_alluvial_new_rater)

