## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(iotarelr)

## -----------------------------------------------------------------------------
head(iotarelr_written_exams)

## -----------------------------------------------------------------------------
codings<-iotarelr_written_exams[c("Coder A","Coder B","Coder C")]
res_iota2<-compute_iota2(data=codings,
                         random_starts = 5,
                         trace = FALSE)

## -----------------------------------------------------------------------------
get_summary(res_iota2)

## ---- fig.height = 3, fig.width = 7.2, fig.align = "center", fig.cap="Figure 4: Example Plot of Iota"----
plot_iota(res_iota2)

