## ----include = FALSE----------------------------------------------------------
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
                    random_starts = 300)

## -----------------------------------------------------------------------------
get_summary(dgf_exam$group_female)

## -----------------------------------------------------------------------------
get_summary(dgf_exam$group_male)

## ----fig.height = 6, fig.width = 7.2, fig.align = "center", fig.cap = "Figure 1: Plot of Iota for different Groups"----
plot_iota(dgf_exam,
          ylab = "Groups")

## ----fig.height = 5, fig.width = 7.2, fig.align = "center", fig.cap="Figure 2: Stream Plot for Females"----
plot_alluvial_females<-plot_iota2_alluvial(
  dgf_exam$group_female,
  label_titel = "Coding Stream from True to Assigned Categories (Females)")
plot(plot_alluvial_females)

## ----fig.height = 5, fig.width = 7.2, fig.align = "center", fig.cap="Figure 3: Stream Plot for Males"----
plot_alluvial_males<-plot_iota2_alluvial(
  dgf_exam$group_male,
  label_titel = "Coding Stream from True to Assigned Categories (Males)")
plot(plot_alluvial_males)

