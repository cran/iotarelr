## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(iotarelr)
head(iotarelr_written_exams)

## -----------------------------------------------------------------------------
dgf_exam<-check_dgf(data=iotarelr_written_exams[c("Coder A","Coder B","Coder C")],
                    splitcr = iotarelr_written_exams$Sex,
                     random_starts = 2)

## -----------------------------------------------------------------------------
get_summary(dgf_exam$group_female)

## -----------------------------------------------------------------------------
get_summary(dgf_exam$group_male)

## ---- fig.height = 6, fig.width = 7.2, fig.align = "center", fig.cap = "Figure 1: Plot of Iota for different Groups"----
plot_iota(dgf_exam,
          ylab = "Groups")

