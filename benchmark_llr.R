#' ---
#' title: "FA19 STAT-S 610 Homework 5"
#' subtitle: "benchmark.llr.R"
#' author: "Pei-Ying Chen"
#' date: "`r format(Sys.time(), '%D')`"
#' ---

## set up
rm(list = ls())
source("llr_functions.R")
library(microbenchmark)

## generate data for a very simple regression model
n = 15
x = rnorm(n)
y = rnorm(x + rnorm(n))
z = seq(-1, 1, length.out = 100)
omega = 1

## compute how long the llr function takes to run
microbenchmark(
  fits = llr(z = z, x = x, y = y, omega = pi / 3)
)
