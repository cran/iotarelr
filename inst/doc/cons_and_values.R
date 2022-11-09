## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----calculation--------------------------------------------------------------
library(iotarelr)
get_consequences(measure_typ = "dynamic_iota_index",
                 measure_1_val = .267,
                 measure_2_val = .879,
                 data_type = "ordinal",
                 strength = "medium",
                 sample_size=318,
                 level = 0.95)

