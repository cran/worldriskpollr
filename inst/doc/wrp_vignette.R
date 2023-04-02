## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = FALSE, message = FALSE, warning = FALSE-----------------
library(worldriskpollr)

## ---- message = FALSE, warning = FALSE----------------------------------------
head(wrp_search("violence"))

## ---- message = FALSE, warning = FALSE----------------------------------------
head(wrp_get(geography = "country", wrp_question_uid = "Q1", disaggregation = 0))

## ---- message = FALSE, warning = FALSE----------------------------------------
head(wrp_get(geography = "world", wrp_question_uid = "Q1", disaggregation = 0))

## ---- message = FALSE, warning = FALSE----------------------------------------
# Search for a topic
tmp <- wrp_search("violence")
# Pick the question of interest
tmp <- tmp[tmp$question ==
  "Ever Experienced Physical Violence/Harassment at Work (all countries)", ]
# Get the question code
tmp <- unique(tmp$wrp_question_uid)
# get the data
head(wrp_get(geography = "country", wrp_question_uid = tmp, disaggregation = 0))

