#!/usr/bin/env Rscript

install.packages("devtools")

packages <- c("hadley/ggplot2", "hadley/dplyr", "yihui/knitr", "rstudio/shiny",
              "rstudio/shinyapps", "rstudio/DT", "ramnathv/rCharts", "bokeh/rbokeh", "hadley/lubridate")


library(devtools)

for package in packages {
    install_github(package)
}
