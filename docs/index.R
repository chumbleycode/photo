#' ---
#' title: Examples
#' output:
#'    html_document:
#'      toc: true
#'      highlight: zenburn
#' ---
#' <!-- rmarkdown::render("supervised_play/nice_code.R") -->
#' <!-- [See here.](http://brooksandrew.github.io/simpleblog/articles/render-reports-directly-from-R-scripts/) -->
#' Set global options 
#+ setup, warning=FALSE, message=FALSE, results='asis'
# knitr::opts_chunk$set(echo = FALSE)

library(tidyverse)
library(here)

plots = dir("docs", pattern = "*.jpg|.jpeg",full.names = TRUE)  
 
walk(plots, ~cat("![](", file.path(.x)))

for(i in plots){
   cat("![text](",i,")")
}

plots <- list.files("docs/")
for(i in plots){
  filename <- file.path("docs", i)
  cat("![text](",filename,")")
}
